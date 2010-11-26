#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.
AC_PREREQ([2.60])
AC_INIT([ltl2ba], [1.1], [paul.gastin@lsv.ens-cachan.fr])
AC_CONFIG_MACRO_DIR([m4])
AC_CONFIG_AUX_DIR([autotools])
AM_INIT_AUTOMAKE([foreign])
AC_CONFIG_SRCDIR([main.c])
AC_CONFIG_HEADERS([config.h])

# Checks for programs.
AC_PROG_CC
AC_PROG_CXX
AC_PROG_AWK
AC_PROG_CPP
AC_PROG_INSTALL
AC_PROG_LN_S
AC_PROG_MAKE_SET
dnl Newer libtool allows this instead:
dnl LT_PREREQ(2.2)
dnl LT_INIT([disable-shared])
AC_DISABLE_SHARED
AC_PROG_LIBTOOL
AC_PROG_RANLIB

AX_TRY_CFLAGS_IFELSE([-W -Wall])
AX_TRY_CFLAGS_IFELSE([-pipe])
AX_TRY_CFLAGS_IFELSE([-ansi])

# Checks for libraries.

# Checks for header files.
AC_CHECK_HEADERS([stdlib.h string.h sys/time.h])

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.
AC_FUNC_MALLOC
AC_CHECK_FUNCS([memset])

AC_CONFIG_FILES([
  Makefile
])
AC_OUTPUT
