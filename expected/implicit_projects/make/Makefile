#----------------------------------------------------------------------------
#       Make Workspace
#
# $Id$
#
# This file was generated by MPC.  Any changes made directly to
# this file will be lost the next time it is generated.
#
# MPC Command:
# /tmp/MPC/mwc.pl -include config -include /home/amitz/MPC_TEST/config -type make implicit_projects.mwc
#
#----------------------------------------------------------------------------


all: one two

depend: one-depend two-depend

clean generated realclean check-syntax $(CUSTOM_TARGETS):
	@cd source/one && $(MAKE) -f Makefile.one $(@)
	@cd source/two && $(MAKE) -f Makefile.two $(@)

.PHONY: one
one:
	@cd source/one && $(MAKE) -f Makefile.one all

.PHONY: one-depend
one-depend:
	@cd source/one && $(MAKE) -f Makefile.one depend

.PHONY: two
two: one
	@cd source/two && $(MAKE) -f Makefile.two all

.PHONY: two-depend
two-depend:
	@cd source/two && $(MAKE) -f Makefile.two depend

project_name_list:
	@echo one
	@echo two
