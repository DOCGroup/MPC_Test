#----------------------------------------------------------------------------
#       Make Workspace
#
# $Id$
#
# This file was generated by MPC.  Any changes made directly to
# this file will be lost the next time it is generated.
#
# MPC Command:
# /tmp/MPC/mwc.pl -include config -include /home/amitz/MPC_TEST/config -type make mixed_languages_refs.mwc
#
#----------------------------------------------------------------------------


all: n-target r-target o-target z-target

depend: n-target-depend r-target-depend o-target-depend z-target-depend

clean generated realclean check-syntax $(CUSTOM_TARGETS):
	@cd n && $(MAKE) -f Makefile.n $(@)
	@cd r && $(MAKE) -f Makefile.r $(@)
	@cd o && $(MAKE) -f Makefile.o $(@)
	@cd z && $(MAKE) -f Makefile.z $(@)

.PHONY: n-target
n-target:
	@cd n && $(MAKE) -f Makefile.n all

.PHONY: n-target-depend
n-target-depend:
	@cd n && $(MAKE) -f Makefile.n depend

.PHONY: r-target
r-target:
	@cd r && $(MAKE) -f Makefile.r all

.PHONY: r-target-depend
r-target-depend:
	@cd r && $(MAKE) -f Makefile.r depend

.PHONY: o-target
o-target: n-target r-target
	@cd o && $(MAKE) -f Makefile.o all

.PHONY: o-target-depend
o-target-depend:
	@cd o && $(MAKE) -f Makefile.o depend

.PHONY: z-target
z-target: n-target r-target o-target
	@cd z && $(MAKE) -f Makefile.z all

.PHONY: z-target-depend
z-target-depend:
	@cd z && $(MAKE) -f Makefile.z depend

project_name_list:
	@echo n-target
	@echo o-target
	@echo r-target
	@echo z-target
