# -*- makefile -*-
#----------------------------------------------------------------------------
#       GNU ACE Workspace
#
# $Id$
#
# This file was generated by MPC.  Any changes made directly to
# this file will be lost the next time it is generated.
#
# MPC Command:
# /tao_builds/taoadmin/1.5a/ACE_wrappers/bin/mwc.pl -include config -type gnuace implicit_resources.mwc
#
#----------------------------------------------------------------------------

MAKEFILE = GNUmakefile

ifeq ($(findstring k,$(MAKEFLAGS)),k)
  KEEP_GOING = -
endif

include $(ACE_ROOT)/include/makeinclude/macros.GNU

all: dir1-target dir3-target

REMAINING_TARGETS := $(subst all, , $(TARGETS_NESTED:.nested=)) $(CUSTOM_TARGETS)

$(REMAINING_TARGETS):
	@cd dir1 && $(MAKE) -f GNUmakefile.dir1 $(@)
	@cd dir3 && $(MAKE) -f GNUmakefile.dir3 $(@)

.PHONY: dir1-target
dir1-target:
	@cd dir1 && $(MAKE) -f GNUmakefile.dir1 all

.PHONY: dir3-target
dir3-target:
	@cd dir3 && $(MAKE) -f GNUmakefile.dir3 all

project_name_list:
	@echo dir1-target
	@echo dir3-target
