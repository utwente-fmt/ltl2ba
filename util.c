#include "ltl2ba.h"

FILE           *tl_out = NULL;

int	tl_stats = 0;
int tl_simp_log  = 1;
int tl_simp_diff = 1;
int tl_simp_fly  = 1;
int tl_simp_scc  = 1;
int tl_fjtofj    = 1;
int	tl_errs      = 0;
int	tl_verbose   = 0;
int	tl_terse     = 0;
unsigned long	All_Mem = 0;

#ifdef __GLIBC__
size_t strlcpy(char *dst, const char *src, size_t size)
{
   size_t bytes = 0;
   char *q = dst;
   const char *p = src;
   char ch;

   while ((ch = *p++)) {
       if (bytes+1 < size)
           *q++ = ch;
       bytes++;
   }

   /* If size == 0 there is no space for a final null... */
   if (size)
       *q = '\0';
   return bytes;
}

size_t strlcat(char *dst, const char *src, size_t size)
{
   size_t bytes = 0;
   char *q = dst;
   const char *p = src;
   char ch;

   while (bytes < size && *q) {
       q++;
       bytes++;
   }
   if (bytes == size)
       return (bytes + strlen(src));

   while ((ch = *p++)) {
       if (bytes+1 < size)
       *q++ = ch;
       bytes++;
   }

   *q = '\0';
   return bytes;
}
#endif /* __GLIBC__ */

static char	uform[4096];
static int	hasuform=0, cnt=0;

int
ltl2ba_init()
{
    tl_out = stderr;
    return 0;
}

int
tl_Getchar(void)
{
	if (cnt < hasuform)
		return uform[cnt++];
	cnt++;
	return -1;
}

int
set_uform(const char *arg)
{
    strcpy(uform, arg);
    hasuform = strlen(uform);
    return hasuform;
}

void
append_uform(const char *arg)
{
    strlcat(uform, arg, sizeof uform);
}

void
put_uform(void)
{
	fprintf(tl_out, "%s", uform);
}

void
tl_UnGetchar(void)
{
	if (cnt > 0) cnt--;
}


static void
non_fatal(char *s1, char *s2)
{	extern int tl_yychar;
	int i;

	printf("ltl2ba: ");
	if (s2)
		fprintf(stdout, s1, s2);
	else
		fputs(s1, stdout);
	if (tl_yychar != -1 && tl_yychar != 0)
	{	printf(", saw '");
		tl_explain(tl_yychar);
		printf("'");
	}
	printf("\nltl2ba: %s\n---------", uform);
	for (i = 0; i < cnt; i++)
		printf("-");
	printf("^\n");
	fflush(stdout);
	tl_errs++;
}


char *
emalloc(int n)
{       char *tmp;

        if (!(tmp = (char *) malloc(n)))
                fatal("not enough memory", (char *)0);
        memset(tmp, 0, n);
        return tmp;
}

void
alldone(int estatus)
{
        exit(estatus);
}

void
tl_yyerror(char *s1)
{
	Fatal(s1, (char *) 0);
}

void
Fatal(char *s1, char *s2)
{
  non_fatal(s1, s2);
  alldone(1);
}

void
fatal(char *s1, char *s2)
{
        non_fatal(s1, s2);
        alldone(1);
}


/* Subtract the `struct timeval' values X and Y, storing the result X-Y in RESULT.
   Return 1 if the difference is negative, otherwise 0.  */
 
int
timeval_subtract (result, x, y)
struct timeval *result, *x, *y;
{
	if (x->tv_usec < y->tv_usec) {
		x->tv_usec += 1000000;
		x->tv_sec--;
	}

	/* Compute the time remaining to wait. tv_usec is certainly positive. */
	result->tv_sec = x->tv_sec - y->tv_sec;
	result->tv_usec = x->tv_usec - y->tv_usec;

	/* Return 1 if result is negative. */
	return x->tv_sec < y->tv_sec;
}

#define Binop(a)		\
		fprintf(tl_out, "(");	\
		dump(n->lft);		\
		fprintf(tl_out, a);	\
		dump(n->rgt);		\
		fprintf(tl_out, ")")

void
dump(Node *n)
{
	if (!n) return;

	switch(n->ntyp) {
	case OR:	Binop(" || "); break;
	case AND:	Binop(" && "); break;
	case U_OPER:	Binop(" U ");  break;
	case V_OPER:	Binop(" V ");  break;
#ifdef NXT
	case NEXT:
		fprintf(tl_out, "X");
		fprintf(tl_out, " (");
		dump(n->lft);
		fprintf(tl_out, ")");
		break;
#endif
	case NOT:
		fprintf(tl_out, "!");
		fprintf(tl_out, " (");
		dump(n->lft);
		fprintf(tl_out, ")");
		break;
	case FALSE:
		fprintf(tl_out, "false");
		break;
	case TRUE:
		fprintf(tl_out, "true");
		break;
	case PREDICATE:
		fprintf(tl_out, "(%s)", n->sym->name);
		break;
	case -1:
		fprintf(tl_out, " D ");
		break;
	default:
		printf("Unknown token: ");
		tl_explain(n->ntyp);
		break;
	}
}

void
tl_explain(int n)
{
	switch (n) {
	case ALWAYS:	printf("[]"); break;
	case EVENTUALLY: printf("<>"); break;
	case IMPLIES:	printf("->"); break;
	case EQUIV:	printf("<->"); break;
	case PREDICATE:	printf("predicate"); break;
	case OR:	printf("||"); break;
	case AND:	printf("&&"); break;
	case NOT:	printf("!"); break;
	case U_OPER:	printf("U"); break;
	case V_OPER:	printf("V"); break;
#ifdef NXT
	case NEXT:	printf("X"); break;
#endif
	case TRUE:	printf("true"); break;
	case FALSE:	printf("false"); break;
	case ';':	printf("end of formula"); break;
	default:	printf("%c", n); break;
	}
}
