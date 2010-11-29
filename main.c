/***** ltl2ba : main.c *****/

/* Written by Denis Oddoux, LIAFA, France                                 */
/* Copyright (c) 2001  Denis Oddoux                                       */
/* Modified by Paul Gastin, LSV, France                                   */
/* Copyright (c) 2007  Paul Gastin                                        */
/*                                                                        */
/* This program is free software; you can redistribute it and/or modify   */
/* it under the terms of the GNU General Public License as published by   */
/* the Free Software Foundation; either version 2 of the License, or      */
/* (at your option) any later version.                                    */
/*                                                                        */
/* This program is distributed in the hope that it will be useful,        */
/* but WITHOUT ANY WARRANTY; without even the implied warranty of         */
/* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the          */
/* GNU General Public License for more details.                           */
/*                                                                        */
/* You should have received a copy of the GNU General Public License      */
/* along with this program; if not, write to the Free Software            */
/* Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA*/
/*                                                                        */
/* Based on the translation algorithm by Gastin and Oddoux,               */
/* presented at the 13th International Conference on Computer Aided       */
/* Verification, CAV 2001, Paris, France.                                 */
/* Proceedings - LNCS 2102, pp. 53-65                                     */
/*                                                                        */
/* Send bug-reports and/or questions to Paul Gastin                       */
/* http://www.lsv.ens-cachan.fr/~gastin                                   */
/*                                                                        */
/* Some of the code in this file was taken from the Spin software         */
/* Written by Gerard J. Holzmann, Bell Laboratories, U.S.A.               */

#include "config.h"
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

#include "ltl2ba.h"

static char     **ltl_file = (char **)0;
static char     **add_ltl  = (char **)0;

static void	tl_endstats(void);
static const char *outfile;

void
cleanup()
{
    if (outfile != NULL) {
        unlink (outfile);
    }
}

FILE *
cpyfile(const char *src, const char *tgt)
{       FILE *inp, *out;
        char buf[4096];

        inp = fopen(src, "r");
        out = fopen(tgt, "w");
        if (!inp || !out)
        {       printf("ltl2ba: cannot cp %s to %s\n", src, tgt);
                alldone(1);
        }
        while (fgets(buf, sizeof buf, inp))
            fputs(buf, out);
        fclose(inp);
        return out;
}

void
usage(void)
{
        printf("usage: ltl2ba [-flag] -f formula\n");
        printf("                   or -F file\n");
        printf(" -f \"formula\"\ttranslate LTL ");
        printf("into never claim\n");
        printf(" -F file\tlike -f, but with the LTL ");
        printf("formula stored in a 1-line file\n");
        printf(" -d\t\tdisplay automata (D)escription at each step\n");
        printf(" -s\t\tcomputing time and automata sizes (S)tatistics\n");
        printf(" -l\t\tdisable (L)ogic formula simplification\n");
        printf(" -p\t\tdisable a-(P)osteriori simplification\n");
        printf(" -o\t\tdisable (O)n-the-fly simplification\n");
        printf(" -c\t\tdisable strongly (C)onnected components simplification\n");
        printf(" -a\t\tdisable trick in (A)ccepting conditions\n");
	
        alldone(1);
}

int
tl_main(int argc, char *argv[])
{       int i;
        int hasuform = 0;
	while (argc > 1 && argv[1][0] == '-')
	{	switch (argv[1][1]) {
		case 'f':	argc--; argv++;
				for (i = 0; i < argv[1][i]; i++)
				{	if (argv[1][i] == '\t'
					||  argv[1][i] == '\"'
					||  argv[1][i] == '\n')
						argv[1][i] = ' ';
				}
                                hasuform = set_uform(argv[1]);
				break;
		default :	usage();
		}
		argc--; argv++;
	}
	if (hasuform == 0) usage();
	tl_parse();
	print_spin_buchi();
	if (tl_stats) tl_endstats();
	return tl_errs;
}

int
main(int argc, char *argv[])
{       ltl2ba_init();
        tl_out = stdout;
        atexit(cleanup);
	while (argc > 1 && argv[1][0] == '-')
        {       switch (argv[1][1]) {
                case 'F': ltl_file = (char **) (argv+2);
                          argc--; argv++; break;
                case 'f': add_ltl = (char **) argv;
                          argc--; argv++; break;
                case 'a': tl_fjtofj = 0; break;
                case 'c': tl_simp_scc = 0; break;
                case 'o': tl_simp_fly = 0; break;
                case 'p': tl_simp_diff = 0; break;
                case 'l': tl_simp_log = 0; break;
                case 'd': tl_verbose = 1; break;
                case 's': tl_stats = 1; break;
                default : usage(); break;
                }
                argc--, argv++;
        }

	if(!ltl_file && !add_ltl) usage();

        if (ltl_file)
        {       char formula[4096];
                add_ltl = ltl_file-2; add_ltl[1][1] = 'f';
                if (!(tl_out = fopen(*ltl_file, "r")))
                {       printf("ltl2ba: cannot open %s\n", *ltl_file);
                        alldone(1);
                }
                fgets(formula, 4096, tl_out);
                fclose(tl_out);
                tl_out = stdout;
                *ltl_file = (char *) formula;
        }
        if (argc > 1)
        {       outfile = "_tmp2_";
                tl_out = cpyfile(argv[1], outfile);
                tl_main(2, add_ltl);  
                fclose(tl_out);
                if (rename(outfile, argv[1]) != 0) {
                    perror("rename");
                    alldone(1);
                }
                outfile = NULL;
        } else 
	{
                if (argc > 0)
                        exit(tl_main(2, add_ltl));
		usage();
	}
        exit (EXIT_SUCCESS);
}

static void
tl_endstats(void)
{	printf("\ntotal memory used: %9ld\n", All_Mem);
	/*cache_stats();*/
	a_stats();
}
