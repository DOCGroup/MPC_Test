##  Process this file with automake to create Makefile.in
##
## $Id$
##
## This file was generated by MPC.  Any changes made directly to
## this file will be lost the next time it is generated.
##
## MPC Command:
## /tao_builds/chad/ocitao/ACE_wrappers/build/linux/bin/mwc.pl -include config -type automake -type html -relative_file config/relative -gfeature_file config/features template_input.mwc


## Makefile.lib.am

noinst_LTLIBRARIES = liblibsd.la
Debug : liblibsd.la
noinst_LTLIBRARIES += liblibs.la
Release : liblibs.la

liblib_CPPFLAGS_COMMON = \
  -DNDEBUG \
  -DWIN32 \
  -D_WINDOWS \
  -D_CRT_NONSTDC_NO_WARNINGS \
  -D__NO_STATIC_FLAGS_AVAILABLE__

liblibsd_la_CPPFLAGS = $(liblib_CPPFLAGS_COMMON)
liblibs_la_CPPFLAGS = $(liblib_CPPFLAGS_COMMON)

liblib_SOURCES_COMMON = \
  foo.cpp

liblibsd_la_SOURCES = $(liblib_SOURCES_COMMON)
liblibs_la_SOURCES = $(liblib_SOURCES_COMMON)

## Clean up template repositories, etc.
clean-local:
	-rm -f *~ *.bak *.rpo *.sym lib*.*_pure_* core core.*
	-rm -f gcctemp.c gcctemp so_locations *.ics
	-rm -rf cxx_repository ptrepository ti_files
	-rm -rf templateregistry ir.out
	-rm -rf ptrepository SunWS_cache Templates.DB
