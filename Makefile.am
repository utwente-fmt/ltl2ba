ACLOCAL_AMFLAGS = -I m4
AM_CPPFLAGS = -DNXT -I$(top_builddir)/lib -I$(top_srcdir)/lib

SUBDIRS = lib

bin_PROGRAMS = ltl2ba
noinst_LTLIBRARIES = libltl2ba.la

ltl2ba_SOURCES  = main.c
ltl2ba_SOURCES += ltl2ba.h
ltl2ba_LDADD = libltl2ba.la $(top_builddir)/lib/libgnu.la

libltl2ba_la_SOURCES  = parse.c
libltl2ba_la_SOURCES += lex.c
libltl2ba_la_SOURCES += trans.c
libltl2ba_la_SOURCES += buchi.c
libltl2ba_la_SOURCES += set.c
libltl2ba_la_SOURCES += mem.c
libltl2ba_la_SOURCES += rewrt.c
libltl2ba_la_SOURCES += cache.c
libltl2ba_la_SOURCES += alternating.c
libltl2ba_la_SOURCES += generalized.c
libltl2ba_la_SOURCES += util.h util.c
libltl2ba_la_SOURCES += ltl2ba.h
libltl2ba_la_LIBADD   = $(top_builddir)/lib/libgnu.la

EXTRA_DIST = m4/gnulib-cache.m4

# make
.DELETE_ON_ERROR:
