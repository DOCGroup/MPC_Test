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
# /tao_builds/chad/ocitao/ACE_wrappers/build/linux/bin/mwc.pl -include config -type gnuace
#
#----------------------------------------------------------------------------

MAKEFILE = GNUmakefile

ifeq ($(findstring k,$(MAKEFLAGS)),k)
  KEEP_GOING = -
endif

include $(ACE_ROOT)/include/makeinclude/macros.GNU

all: flex_bison

REMAINING_TARGETS := $(subst all, , $(TARGETS_NESTED:.nested=)) $(CUSTOM_TARGETS)

$(REMAINING_TARGETS):
	@$(MAKE) -f GNUmakefile.flex_bison $(@)

.PHONY: flex_bison
flex_bison:
	@$(MAKE) -f GNUmakefile.flex_bison all

project_name_list:
	@echo flex_bison
