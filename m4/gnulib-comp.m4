# DO NOT EDIT! GENERATED AUTOMATICALLY!
# Copyright (C) 2002-2018 Free Software Foundation, Inc.
#
# This file is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This file is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this file.  If not, see <https://www.gnu.org/licenses/>.
#
# As a special exception to the GNU General Public License,
# this file may be distributed as part of a program that
# contains a configuration script generated by Autoconf, under
# the same distribution terms as the rest of that program.
#
# Generated by gnulib-tool.
#
# This file represents the compiled summary of the specification in
# gnulib-cache.m4. It lists the computed macro invocations that need
# to be invoked from configure.ac.
# In projects that use version control, this file can be treated like
# other built files.


# This macro should be invoked from ./configure.ac, in the section
# "Checks for programs", right after AC_PROG_CC, and certainly before
# any checks for libraries, header files, types and library functions.
AC_DEFUN([gl_EARLY],
[
  m4_pattern_forbid([^gl_[A-Z]])dnl the gnulib macro namespace
  m4_pattern_allow([^gl_ES$])dnl a valid locale name
  m4_pattern_allow([^gl_LIBOBJS$])dnl a variable
  m4_pattern_allow([^gl_LTLIBOBJS$])dnl a variable

  # Pre-early section.
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])
  AC_REQUIRE([gl_PROG_AR_RANLIB])

  # Code from module absolute-header:
  # Code from module alloca-opt:
  # Code from module errno:
  # Code from module extensions:
  # Code from module extern-inline:
  # Code from module float:
  # Code from module fpieee:
  AC_REQUIRE([gl_FP_IEEE])
  # Code from module fprintf-posix:
  # Code from module fpucw:
  # Code from module frexp-nolibm:
  # Code from module frexpl-nolibm:
  # Code from module fseterr:
  # Code from module getrusage:
  # Code from module include_next:
  # Code from module isnand-nolibm:
  # Code from module isnanf-nolibm:
  # Code from module isnanl-nolibm:
  # Code from module limits-h:
  # Code from module math:
  # Code from module memchr:
  # Code from module multiarch:
  # Code from module nocrash:
  # Code from module printf-frexp:
  # Code from module printf-frexpl:
  # Code from module printf-safe:
  # Code from module signbit:
  # Code from module size_max:
  # Code from module snippet/arg-nonnull:
  # Code from module snippet/c++defs:
  # Code from module snippet/warn-on-use:
  # Code from module ssize_t:
  # Code from module stddef:
  # Code from module stdint:
  # Code from module stdio:
  # Code from module string:
  # Code from module sys_resource:
  # Code from module sys_time:
  # Code from module sys_types:
  # Code from module vasnprintf:
  # Code from module verify:
  # Code from module wchar:
  # Code from module xsize:
])

# This macro should be invoked from ./configure.ac, in the section
# "Check for header files, types and library functions".
AC_DEFUN([gl_INIT],
[
  AM_CONDITIONAL([GL_COND_LIBTOOL], [true])
  gl_cond_libtool=true
  gl_m4_base='m4'
  m4_pushdef([AC_LIBOBJ], m4_defn([gl_LIBOBJ]))
  m4_pushdef([AC_REPLACE_FUNCS], m4_defn([gl_REPLACE_FUNCS]))
  m4_pushdef([AC_LIBSOURCES], m4_defn([gl_LIBSOURCES]))
  m4_pushdef([gl_LIBSOURCES_LIST], [])
  m4_pushdef([gl_LIBSOURCES_DIR], [])
  gl_COMMON
  gl_source_base='lib'
  gl_FUNC_ALLOCA
  gl_HEADER_ERRNO_H
  gl_FLOAT_H
  if test $REPLACE_FLOAT_LDBL = 1; then
    AC_LIBOBJ([float])
  fi
  if test $REPLACE_ITOLD = 1; then
    AC_LIBOBJ([itold])
  fi
  gl_FUNC_FPRINTF_POSIX
  gl_STDIO_MODULE_INDICATOR([fprintf-posix])
  gl_FUNC_GETRUSAGE
  if test $HAVE_GETRUSAGE = 0; then
    AC_LIBOBJ([getrusage])
  fi
  gl_SYS_RESOURCE_MODULE_INDICATOR([getrusage])
  gl_LIMITS_H
  gl_MULTIARCH
  m4_divert_text([INIT_PREPARE], [gl_printf_safe=yes])
  gt_TYPE_SSIZE_T
  gl_STDDEF_H
  gl_STDINT_H
  gl_STDIO_H
  gl_HEADER_SYS_RESOURCE
  AC_PROG_MKDIR_P
  gl_HEADER_SYS_TIME_H
  AC_PROG_MKDIR_P
  gl_SYS_TYPES_H
  AC_PROG_MKDIR_P
  gl_gnulib_enabled_8ba2abba379e5cbd6f80c374ac0bfe27=false
  gl_gnulib_enabled_fpieee=false
  gl_gnulib_enabled_fpucw=false
  gl_gnulib_enabled_e1c6a1281ce2cc59c716894550bcb2b5=false
  gl_gnulib_enabled_e0ca81912f23214e44f5700922db34be=false
  gl_gnulib_enabled_fseterr=false
  gl_gnulib_enabled_b1df7117b479d2da59d76deba468ee21=false
  gl_gnulib_enabled_3f0e593033d1fc2c127581960f641b66=false
  gl_gnulib_enabled_dbdf22868a5367f28bf18e0013ac6f8f=false
  gl_gnulib_enabled_math=false
  gl_gnulib_enabled_memchr=false
  gl_gnulib_enabled_2f551a684aab5400633cbfd56df3bf94=false
  gl_gnulib_enabled_bba639f0cfd658540d716f3a2ba5e68f=false
  gl_gnulib_enabled_signbit=false
  gl_gnulib_enabled_size_max=false
  gl_gnulib_enabled_string=false
  gl_gnulib_enabled_vasnprintf=false
  gl_gnulib_enabled_verify=false
  gl_gnulib_enabled_wchar=false
  gl_gnulib_enabled_xsize=false
  func_gl_gnulib_m4code_8ba2abba379e5cbd6f80c374ac0bfe27 ()
  {
    if ! $gl_gnulib_enabled_8ba2abba379e5cbd6f80c374ac0bfe27; then
      AC_REQUIRE([gl_EXTERN_INLINE])
      gl_gnulib_enabled_8ba2abba379e5cbd6f80c374ac0bfe27=true
    fi
  }
  func_gl_gnulib_m4code_fpieee ()
  {
    if ! $gl_gnulib_enabled_fpieee; then
      gl_gnulib_enabled_fpieee=true
    fi
  }
  func_gl_gnulib_m4code_fpucw ()
  {
    if ! $gl_gnulib_enabled_fpucw; then
      gl_gnulib_enabled_fpucw=true
    fi
  }
  func_gl_gnulib_m4code_e1c6a1281ce2cc59c716894550bcb2b5 ()
  {
    if ! $gl_gnulib_enabled_e1c6a1281ce2cc59c716894550bcb2b5; then
      gl_FUNC_FREXP_NO_LIBM
      if test $gl_func_frexp_no_libm != yes; then
        AC_LIBOBJ([frexp])
      fi
      gl_MATH_MODULE_INDICATOR([frexp])
      gl_gnulib_enabled_e1c6a1281ce2cc59c716894550bcb2b5=true
      if test $gl_func_frexp_no_libm != yes; then
        func_gl_gnulib_m4code_b1df7117b479d2da59d76deba468ee21
      fi
      func_gl_gnulib_m4code_math
    fi
  }
  func_gl_gnulib_m4code_e0ca81912f23214e44f5700922db34be ()
  {
    if ! $gl_gnulib_enabled_e0ca81912f23214e44f5700922db34be; then
      gl_FUNC_FREXPL_NO_LIBM
      if test $HAVE_DECL_FREXPL = 0 || test $gl_func_frexpl_no_libm = no; then
        AC_LIBOBJ([frexpl])
      fi
      gl_MATH_MODULE_INDICATOR([frexpl])
      gl_gnulib_enabled_e0ca81912f23214e44f5700922db34be=true
      if { test $HAVE_DECL_FREXPL = 0 || test $gl_func_frexpl_no_libm = no; } && test $HAVE_SAME_LONG_DOUBLE_AS_DOUBLE = 0; then
        func_gl_gnulib_m4code_fpucw
      fi
      if { test $HAVE_DECL_FREXPL = 0 || test $gl_func_frexpl_no_libm = no; } && test $HAVE_SAME_LONG_DOUBLE_AS_DOUBLE = 1; then
        func_gl_gnulib_m4code_e1c6a1281ce2cc59c716894550bcb2b5
      fi
      if { test $HAVE_DECL_FREXPL = 0 || test $gl_func_frexpl_no_libm = no; } && test $HAVE_SAME_LONG_DOUBLE_AS_DOUBLE = 0; then
        func_gl_gnulib_m4code_dbdf22868a5367f28bf18e0013ac6f8f
      fi
      func_gl_gnulib_m4code_math
    fi
  }
  func_gl_gnulib_m4code_fseterr ()
  {
    if ! $gl_gnulib_enabled_fseterr; then
      gl_FUNC_FSETERR
      if test $ac_cv_func___fseterr = no; then
        AC_LIBOBJ([fseterr])
      fi
      gl_gnulib_enabled_fseterr=true
    fi
  }
  func_gl_gnulib_m4code_b1df7117b479d2da59d76deba468ee21 ()
  {
    if ! $gl_gnulib_enabled_b1df7117b479d2da59d76deba468ee21; then
      gl_FUNC_ISNAND_NO_LIBM
      if test $gl_func_isnand_no_libm != yes; then
        AC_LIBOBJ([isnand])
        gl_PREREQ_ISNAND
      fi
      gl_gnulib_enabled_b1df7117b479d2da59d76deba468ee21=true
      func_gl_gnulib_m4code_fpieee
    fi
  }
  func_gl_gnulib_m4code_3f0e593033d1fc2c127581960f641b66 ()
  {
    if ! $gl_gnulib_enabled_3f0e593033d1fc2c127581960f641b66; then
      gl_FUNC_ISNANF_NO_LIBM
      if test $gl_func_isnanf_no_libm != yes; then
        AC_LIBOBJ([isnanf])
        gl_PREREQ_ISNANF
      fi
      gl_gnulib_enabled_3f0e593033d1fc2c127581960f641b66=true
      func_gl_gnulib_m4code_fpieee
    fi
  }
  func_gl_gnulib_m4code_dbdf22868a5367f28bf18e0013ac6f8f ()
  {
    if ! $gl_gnulib_enabled_dbdf22868a5367f28bf18e0013ac6f8f; then
      gl_FUNC_ISNANL_NO_LIBM
      if test $gl_func_isnanl_no_libm != yes; then
        AC_LIBOBJ([isnanl])
        gl_PREREQ_ISNANL
      fi
      gl_gnulib_enabled_dbdf22868a5367f28bf18e0013ac6f8f=true
      func_gl_gnulib_m4code_fpieee
    fi
  }
  func_gl_gnulib_m4code_math ()
  {
    if ! $gl_gnulib_enabled_math; then
      gl_MATH_H
      gl_gnulib_enabled_math=true
      func_gl_gnulib_m4code_8ba2abba379e5cbd6f80c374ac0bfe27
    fi
  }
  func_gl_gnulib_m4code_memchr ()
  {
    if ! $gl_gnulib_enabled_memchr; then
      gl_FUNC_MEMCHR
      if test $HAVE_MEMCHR = 0 || test $REPLACE_MEMCHR = 1; then
        AC_LIBOBJ([memchr])
        gl_PREREQ_MEMCHR
      fi
      gl_STRING_MODULE_INDICATOR([memchr])
      gl_gnulib_enabled_memchr=true
      func_gl_gnulib_m4code_string
    fi
  }
  func_gl_gnulib_m4code_2f551a684aab5400633cbfd56df3bf94 ()
  {
    if ! $gl_gnulib_enabled_2f551a684aab5400633cbfd56df3bf94; then
      gl_FUNC_PRINTF_FREXP
      gl_gnulib_enabled_2f551a684aab5400633cbfd56df3bf94=true
    fi
  }
  func_gl_gnulib_m4code_bba639f0cfd658540d716f3a2ba5e68f ()
  {
    if ! $gl_gnulib_enabled_bba639f0cfd658540d716f3a2ba5e68f; then
      gl_FUNC_PRINTF_FREXPL
      gl_gnulib_enabled_bba639f0cfd658540d716f3a2ba5e68f=true
      if test $HAVE_SAME_LONG_DOUBLE_AS_DOUBLE = 0; then
        func_gl_gnulib_m4code_fpucw
      fi
      if test $HAVE_SAME_LONG_DOUBLE_AS_DOUBLE = 0; then
        func_gl_gnulib_m4code_math
      fi
      if test $HAVE_SAME_LONG_DOUBLE_AS_DOUBLE = 1; then
        func_gl_gnulib_m4code_2f551a684aab5400633cbfd56df3bf94
      fi
    fi
  }
  func_gl_gnulib_m4code_signbit ()
  {
    if ! $gl_gnulib_enabled_signbit; then
      gl_SIGNBIT
      if test $REPLACE_SIGNBIT = 1; then
        AC_LIBOBJ([signbitf])
        AC_LIBOBJ([signbitd])
        AC_LIBOBJ([signbitl])
      fi
      gl_MATH_MODULE_INDICATOR([signbit])
      gl_gnulib_enabled_signbit=true
      if test $REPLACE_SIGNBIT = 1; then
        func_gl_gnulib_m4code_fpieee
      fi
      if test $REPLACE_SIGNBIT = 1; then
        func_gl_gnulib_m4code_b1df7117b479d2da59d76deba468ee21
      fi
      if test $REPLACE_SIGNBIT = 1; then
        func_gl_gnulib_m4code_3f0e593033d1fc2c127581960f641b66
      fi
      if test $REPLACE_SIGNBIT = 1; then
        func_gl_gnulib_m4code_dbdf22868a5367f28bf18e0013ac6f8f
      fi
      func_gl_gnulib_m4code_math
    fi
  }
  func_gl_gnulib_m4code_size_max ()
  {
    if ! $gl_gnulib_enabled_size_max; then
      gl_SIZE_MAX
      gl_gnulib_enabled_size_max=true
    fi
  }
  func_gl_gnulib_m4code_string ()
  {
    if ! $gl_gnulib_enabled_string; then
      gl_HEADER_STRING_H
      gl_gnulib_enabled_string=true
      func_gl_gnulib_m4code_8ba2abba379e5cbd6f80c374ac0bfe27
    fi
  }
  func_gl_gnulib_m4code_vasnprintf ()
  {
    if ! $gl_gnulib_enabled_vasnprintf; then
      gl_FUNC_VASNPRINTF
      gl_gnulib_enabled_vasnprintf=true
      func_gl_gnulib_m4code_memchr
      func_gl_gnulib_m4code_verify
      func_gl_gnulib_m4code_wchar
      func_gl_gnulib_m4code_xsize
    fi
  }
  func_gl_gnulib_m4code_verify ()
  {
    if ! $gl_gnulib_enabled_verify; then
      gl_gnulib_enabled_verify=true
    fi
  }
  func_gl_gnulib_m4code_wchar ()
  {
    if ! $gl_gnulib_enabled_wchar; then
      gl_WCHAR_H
      gl_gnulib_enabled_wchar=true
    fi
  }
  func_gl_gnulib_m4code_xsize ()
  {
    if ! $gl_gnulib_enabled_xsize; then
      gl_XSIZE
      gl_gnulib_enabled_xsize=true
      func_gl_gnulib_m4code_8ba2abba379e5cbd6f80c374ac0bfe27
      func_gl_gnulib_m4code_size_max
    fi
  }
  if test $REPLACE_FPRINTF = 1; then
    func_gl_gnulib_m4code_fpucw
  fi
  if test $REPLACE_FPRINTF = 1; then
    func_gl_gnulib_m4code_e1c6a1281ce2cc59c716894550bcb2b5
  fi
  if test $REPLACE_FPRINTF = 1; then
    func_gl_gnulib_m4code_e0ca81912f23214e44f5700922db34be
  fi
  if test $REPLACE_FPRINTF = 1; then
    func_gl_gnulib_m4code_fseterr
  fi
  if test $REPLACE_FPRINTF = 1; then
    func_gl_gnulib_m4code_b1df7117b479d2da59d76deba468ee21
  fi
  if test $REPLACE_FPRINTF = 1; then
    func_gl_gnulib_m4code_dbdf22868a5367f28bf18e0013ac6f8f
  fi
  if test $REPLACE_FPRINTF = 1; then
    func_gl_gnulib_m4code_2f551a684aab5400633cbfd56df3bf94
  fi
  if test $REPLACE_FPRINTF = 1; then
    func_gl_gnulib_m4code_bba639f0cfd658540d716f3a2ba5e68f
  fi
  if test $REPLACE_FPRINTF = 1; then
    func_gl_gnulib_m4code_signbit
  fi
  if test $REPLACE_FPRINTF = 1; then
    func_gl_gnulib_m4code_vasnprintf
  fi
  m4_pattern_allow([^gl_GNULIB_ENABLED_])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_8ba2abba379e5cbd6f80c374ac0bfe27], [$gl_gnulib_enabled_8ba2abba379e5cbd6f80c374ac0bfe27])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_fpieee], [$gl_gnulib_enabled_fpieee])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_fpucw], [$gl_gnulib_enabled_fpucw])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_e1c6a1281ce2cc59c716894550bcb2b5], [$gl_gnulib_enabled_e1c6a1281ce2cc59c716894550bcb2b5])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_e0ca81912f23214e44f5700922db34be], [$gl_gnulib_enabled_e0ca81912f23214e44f5700922db34be])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_fseterr], [$gl_gnulib_enabled_fseterr])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_b1df7117b479d2da59d76deba468ee21], [$gl_gnulib_enabled_b1df7117b479d2da59d76deba468ee21])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_3f0e593033d1fc2c127581960f641b66], [$gl_gnulib_enabled_3f0e593033d1fc2c127581960f641b66])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_dbdf22868a5367f28bf18e0013ac6f8f], [$gl_gnulib_enabled_dbdf22868a5367f28bf18e0013ac6f8f])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_math], [$gl_gnulib_enabled_math])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_memchr], [$gl_gnulib_enabled_memchr])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_2f551a684aab5400633cbfd56df3bf94], [$gl_gnulib_enabled_2f551a684aab5400633cbfd56df3bf94])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_bba639f0cfd658540d716f3a2ba5e68f], [$gl_gnulib_enabled_bba639f0cfd658540d716f3a2ba5e68f])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_signbit], [$gl_gnulib_enabled_signbit])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_size_max], [$gl_gnulib_enabled_size_max])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_string], [$gl_gnulib_enabled_string])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_vasnprintf], [$gl_gnulib_enabled_vasnprintf])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_verify], [$gl_gnulib_enabled_verify])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_wchar], [$gl_gnulib_enabled_wchar])
  AM_CONDITIONAL([gl_GNULIB_ENABLED_xsize], [$gl_gnulib_enabled_xsize])
  # End of code from modules
  m4_ifval(gl_LIBSOURCES_LIST, [
    m4_syscmd([test ! -d ]m4_defn([gl_LIBSOURCES_DIR])[ ||
      for gl_file in ]gl_LIBSOURCES_LIST[ ; do
        if test ! -r ]m4_defn([gl_LIBSOURCES_DIR])[/$gl_file ; then
          echo "missing file ]m4_defn([gl_LIBSOURCES_DIR])[/$gl_file" >&2
          exit 1
        fi
      done])dnl
      m4_if(m4_sysval, [0], [],
        [AC_FATAL([expected source file, required through AC_LIBSOURCES, not found])])
  ])
  m4_popdef([gl_LIBSOURCES_DIR])
  m4_popdef([gl_LIBSOURCES_LIST])
  m4_popdef([AC_LIBSOURCES])
  m4_popdef([AC_REPLACE_FUNCS])
  m4_popdef([AC_LIBOBJ])
  AC_CONFIG_COMMANDS_PRE([
    gl_libobjs=
    gl_ltlibobjs=
    if test -n "$gl_LIBOBJS"; then
      # Remove the extension.
      sed_drop_objext='s/\.o$//;s/\.obj$//'
      for i in `for i in $gl_LIBOBJS; do echo "$i"; done | sed -e "$sed_drop_objext" | sort | uniq`; do
        gl_libobjs="$gl_libobjs $i.$ac_objext"
        gl_ltlibobjs="$gl_ltlibobjs $i.lo"
      done
    fi
    AC_SUBST([gl_LIBOBJS], [$gl_libobjs])
    AC_SUBST([gl_LTLIBOBJS], [$gl_ltlibobjs])
  ])
  gltests_libdeps=
  gltests_ltlibdeps=
  m4_pushdef([AC_LIBOBJ], m4_defn([gltests_LIBOBJ]))
  m4_pushdef([AC_REPLACE_FUNCS], m4_defn([gltests_REPLACE_FUNCS]))
  m4_pushdef([AC_LIBSOURCES], m4_defn([gltests_LIBSOURCES]))
  m4_pushdef([gltests_LIBSOURCES_LIST], [])
  m4_pushdef([gltests_LIBSOURCES_DIR], [])
  gl_COMMON
  gl_source_base='tests'
changequote(,)dnl
  gltests_WITNESS=IN_`echo "${PACKAGE-$PACKAGE_TARNAME}" | LC_ALL=C tr abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ | LC_ALL=C sed -e 's/[^A-Z0-9_]/_/g'`_GNULIB_TESTS
changequote([, ])dnl
  AC_SUBST([gltests_WITNESS])
  gl_module_indicator_condition=$gltests_WITNESS
  m4_pushdef([gl_MODULE_INDICATOR_CONDITION], [$gl_module_indicator_condition])
  m4_pattern_allow([^gl_GNULIB_ENABLED_])
  m4_popdef([gl_MODULE_INDICATOR_CONDITION])
  m4_ifval(gltests_LIBSOURCES_LIST, [
    m4_syscmd([test ! -d ]m4_defn([gltests_LIBSOURCES_DIR])[ ||
      for gl_file in ]gltests_LIBSOURCES_LIST[ ; do
        if test ! -r ]m4_defn([gltests_LIBSOURCES_DIR])[/$gl_file ; then
          echo "missing file ]m4_defn([gltests_LIBSOURCES_DIR])[/$gl_file" >&2
          exit 1
        fi
      done])dnl
      m4_if(m4_sysval, [0], [],
        [AC_FATAL([expected source file, required through AC_LIBSOURCES, not found])])
  ])
  m4_popdef([gltests_LIBSOURCES_DIR])
  m4_popdef([gltests_LIBSOURCES_LIST])
  m4_popdef([AC_LIBSOURCES])
  m4_popdef([AC_REPLACE_FUNCS])
  m4_popdef([AC_LIBOBJ])
  AC_CONFIG_COMMANDS_PRE([
    gltests_libobjs=
    gltests_ltlibobjs=
    if test -n "$gltests_LIBOBJS"; then
      # Remove the extension.
      sed_drop_objext='s/\.o$//;s/\.obj$//'
      for i in `for i in $gltests_LIBOBJS; do echo "$i"; done | sed -e "$sed_drop_objext" | sort | uniq`; do
        gltests_libobjs="$gltests_libobjs $i.$ac_objext"
        gltests_ltlibobjs="$gltests_ltlibobjs $i.lo"
      done
    fi
    AC_SUBST([gltests_LIBOBJS], [$gltests_libobjs])
    AC_SUBST([gltests_LTLIBOBJS], [$gltests_ltlibobjs])
  ])
])

# Like AC_LIBOBJ, except that the module name goes
# into gl_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gl_LIBOBJ], [
  AS_LITERAL_IF([$1], [gl_LIBSOURCES([$1.c])])dnl
  gl_LIBOBJS="$gl_LIBOBJS $1.$ac_objext"
])

# Like AC_REPLACE_FUNCS, except that the module name goes
# into gl_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gl_REPLACE_FUNCS], [
  m4_foreach_w([gl_NAME], [$1], [AC_LIBSOURCES(gl_NAME[.c])])dnl
  AC_CHECK_FUNCS([$1], , [gl_LIBOBJ($ac_func)])
])

# Like AC_LIBSOURCES, except the directory where the source file is
# expected is derived from the gnulib-tool parameterization,
# and alloca is special cased (for the alloca-opt module).
# We could also entirely rely on EXTRA_lib..._SOURCES.
AC_DEFUN([gl_LIBSOURCES], [
  m4_foreach([_gl_NAME], [$1], [
    m4_if(_gl_NAME, [alloca.c], [], [
      m4_define([gl_LIBSOURCES_DIR], [lib])
      m4_append([gl_LIBSOURCES_LIST], _gl_NAME, [ ])
    ])
  ])
])

# Like AC_LIBOBJ, except that the module name goes
# into gltests_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gltests_LIBOBJ], [
  AS_LITERAL_IF([$1], [gltests_LIBSOURCES([$1.c])])dnl
  gltests_LIBOBJS="$gltests_LIBOBJS $1.$ac_objext"
])

# Like AC_REPLACE_FUNCS, except that the module name goes
# into gltests_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gltests_REPLACE_FUNCS], [
  m4_foreach_w([gl_NAME], [$1], [AC_LIBSOURCES(gl_NAME[.c])])dnl
  AC_CHECK_FUNCS([$1], , [gltests_LIBOBJ($ac_func)])
])

# Like AC_LIBSOURCES, except the directory where the source file is
# expected is derived from the gnulib-tool parameterization,
# and alloca is special cased (for the alloca-opt module).
# We could also entirely rely on EXTRA_lib..._SOURCES.
AC_DEFUN([gltests_LIBSOURCES], [
  m4_foreach([_gl_NAME], [$1], [
    m4_if(_gl_NAME, [alloca.c], [], [
      m4_define([gltests_LIBSOURCES_DIR], [tests])
      m4_append([gltests_LIBSOURCES_LIST], _gl_NAME, [ ])
    ])
  ])
])

# This macro records the list of files which have been installed by
# gnulib-tool and may be removed by future gnulib-tool invocations.
AC_DEFUN([gl_FILE_LIST], [
  lib/alloca.in.h
  lib/arg-nonnull.h
  lib/asnprintf.c
  lib/c++defs.h
  lib/errno.in.h
  lib/float+.h
  lib/float.c
  lib/float.in.h
  lib/fprintf.c
  lib/fpucw.h
  lib/frexp.c
  lib/frexpl.c
  lib/fseterr.c
  lib/fseterr.h
  lib/getrusage.c
  lib/isnan.c
  lib/isnand-nolibm.h
  lib/isnand.c
  lib/isnanf-nolibm.h
  lib/isnanf.c
  lib/isnanl-nolibm.h
  lib/isnanl.c
  lib/itold.c
  lib/limits.in.h
  lib/math.c
  lib/math.in.h
  lib/memchr.c
  lib/memchr.valgrind
  lib/printf-args.c
  lib/printf-args.h
  lib/printf-frexp.c
  lib/printf-frexp.h
  lib/printf-frexpl.c
  lib/printf-frexpl.h
  lib/printf-parse.c
  lib/printf-parse.h
  lib/signbitd.c
  lib/signbitf.c
  lib/signbitl.c
  lib/size_max.h
  lib/stddef.in.h
  lib/stdint.in.h
  lib/stdio-impl.h
  lib/stdio.in.h
  lib/string.in.h
  lib/sys_resource.in.h
  lib/sys_time.in.h
  lib/sys_types.in.h
  lib/vasnprintf.c
  lib/vasnprintf.h
  lib/verify.h
  lib/warn-on-use.h
  lib/wchar.in.h
  lib/xsize.c
  lib/xsize.h
  m4/00gnulib.m4
  m4/absolute-header.m4
  m4/alloca.m4
  m4/errno_h.m4
  m4/exponentd.m4
  m4/exponentf.m4
  m4/exponentl.m4
  m4/extensions.m4
  m4/extern-inline.m4
  m4/float_h.m4
  m4/fpieee.m4
  m4/fprintf-posix.m4
  m4/frexp.m4
  m4/frexpl.m4
  m4/fseterr.m4
  m4/getrusage.m4
  m4/gnulib-common.m4
  m4/include_next.m4
  m4/intmax_t.m4
  m4/inttypes_h.m4
  m4/isnand.m4
  m4/isnanf.m4
  m4/isnanl.m4
  m4/ldexpl.m4
  m4/limits-h.m4
  m4/longlong.m4
  m4/math_h.m4
  m4/memchr.m4
  m4/mmap-anon.m4
  m4/multiarch.m4
  m4/nocrash.m4
  m4/off_t.m4
  m4/printf-frexp.m4
  m4/printf-frexpl.m4
  m4/printf.m4
  m4/signbit.m4
  m4/size_max.m4
  m4/ssize_t.m4
  m4/stddef_h.m4
  m4/stdint.m4
  m4/stdint_h.m4
  m4/stdio_h.m4
  m4/string_h.m4
  m4/sys_resource_h.m4
  m4/sys_socket_h.m4
  m4/sys_time_h.m4
  m4/sys_types_h.m4
  m4/vasnprintf.m4
  m4/warn-on-use.m4
  m4/wchar_h.m4
  m4/wchar_t.m4
  m4/wint_t.m4
  m4/xsize.m4
])
