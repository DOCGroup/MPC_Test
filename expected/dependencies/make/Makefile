#----------------------------------------------------------------------------
#       Make Workspace
#
# $Id$
#
# This file was generated by MPC.  Any changes made directly to
# this file will be lost the next time it is generated.
#
# MPC Command:
# /tmp/MPC/mwc.pl -include config -include /home/amitz/MPC_TEST/config -type make
#
#----------------------------------------------------------------------------


all: foo__somelib foo__someexecutable foo

depend: foo__somelib-depend foo__someexecutable-depend foo-depend

clean generated realclean check-syntax $(CUSTOM_TARGETS):
	@$(MAKE) -f Makefile.foo__somelib $(@)
	@$(MAKE) -f Makefile.foo__someexecutable $(@)
	@$(MAKE) -f Makefile.foo $(@)

.PHONY: foo__somelib
foo__somelib:
	@$(MAKE) -f Makefile.foo__somelib all

.PHONY: foo__somelib-depend
foo__somelib-depend:
	@$(MAKE) -f Makefile.foo__somelib depend

.PHONY: foo__someexecutable
foo__someexecutable: foo__somelib
	@$(MAKE) -f Makefile.foo__someexecutable all

.PHONY: foo__someexecutable-depend
foo__someexecutable-depend:
	@$(MAKE) -f Makefile.foo__someexecutable depend

.PHONY: foo
foo: foo__someexecutable
	@$(MAKE) -f Makefile.foo all

.PHONY: foo-depend
foo-depend:
	@$(MAKE) -f Makefile.foo depend

project_name_list:
	@echo foo
	@echo foo__someexecutable
	@echo foo__somelib
