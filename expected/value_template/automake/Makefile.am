##  Process this file with automake to create Makefile.in
##
## $Id$
##
## This file was generated by MPC.  Any changes made directly to
## this file will be lost the next time it is generated.
##
## MPC Command:
## /tao_builds/chad/ocitao/ACE_wrappers/build/linux/bin/mwc.pl -include config -type automake -value_template compile_flags=-g -value_template win_version+=5.55 -value_template win_version-=4.44 -value_project includes+=bam


## Makefile.foo_a.am

noinst_LTLIBRARIES = libfoo_a.la

libfoo_a_la_CPPFLAGS = \
  -Ibam \
  -g

libfoo_a_la_SOURCES = \
  foo.cpp

## Makefile.foo_b.am

noinst_LTLIBRARIES += libfoo_b.la

libfoo_b_la_CPPFLAGS = \
  -Ibam \
  -g

libfoo_b_la_SOURCES = \
  foo.cpp

## Makefile.foo_c.am

noinst_LTLIBRARIES += libfoo_c.la

libfoo_c_la_CPPFLAGS = \
  -IBigbam \
  -Ibam \
  -g

libfoo_c_la_SOURCES = \
  foo.cpp


ACLOCAL = @ACLOCAL@
ACLOCAL_AMFLAGS = -I m4
AUTOMAKE_OPTIONS = foreign

## Clean up template repositories, etc.
clean-local:
	-rm -f *~ *.bak *.rpo *.sym lib*.*_pure_* core core.*
	-rm -f gcctemp.c gcctemp so_locations *.ics
	-rm -rf cxx_repository ptrepository ti_files
	-rm -rf templateregistry ir.out
	-rm -rf ptrepository SunWS_cache Templates.DB
