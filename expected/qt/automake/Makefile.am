##  Process this file with automake to create Makefile.in
##
## $Id$
##
## This file was generated by MPC.  Any changes made directly to
## this file will be lost the next time it is generated.
##
## MPC Command:
## /tao_builds/chad/ocitao/ACE_wrappers/build/linux/bin/mwc.pl -include config -type automake -features qt=1


CLEANFILES =
BUILT_SOURCES =

## Makefile.qt_uic_moc.am

if BUILD_QT

BUILT_SOURCES += \
  demo.h

CLEANFILES += \
  demo.h

demo.h: $(srcdir)/demo.ui
	$(QTDIR)/bin/uic  $(srcdir)/demo.ui -o demo.h

BUILT_SOURCES += \
  demo.cpp

CLEANFILES += \
  demo.cpp

demo.cpp: $(srcdir)/demo.ui demo.h
	$(QTDIR)/bin/uic -impl "demo.h" $(srcdir)/demo.ui -o demo.cpp

BUILT_SOURCES += \
  demo_moc.cpp

CLEANFILES += \
  demo_moc.cpp

demo_moc.cpp: $(srcdir)/demo.h
	$(QTDIR)/bin/moc  $(srcdir)/demo.h -o demo_moc.cpp

noinst_PROGRAMS = main

main_CPPFLAGS = \
  -I$(QTDIR)/include \
  -I/usr/include/qt3 \
  -DQT_THREAD_SUPPORT

main_SOURCES = \
  demo.cpp \
  demo_moc.cpp \
  main.cpp \
  demo.h

main_LDFLAGS = \
  -L$(QTDIR)/lib -L$(QTDIR)/lib64

main_LDADD = \
  -lqt-mt$(QT_VERSION)

endif BUILD_QT


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
