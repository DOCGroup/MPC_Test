# Microsoft Developer Studio Generated NMAKE File
!IF "$(CFG)" == ""
CFG=Win32 Debug
!MESSAGE No configuration specified. Defaulting to Win32 Debug.
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release"
!ELSE
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE /f "Makefile.base.mak" CFG="Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "Win32 Static Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "Win32 Static Release" (based on "Win32 (x86) Console Application")
!MESSAGE
!ERROR An invalid configuration was specified.
!ENDIF

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF

!IF "$(DEPGEN)" == ""
!IF EXISTS("$(DEPGEN_ROOT)/depgen.pl")
DEPGEN=perl $(DEPGEN_ROOT)/depgen.pl -i -t nmake
!ELSEIF EXISTS("$(ACE_ROOT)/bin/depgen.pl")
DEPGEN=perl $(ACE_ROOT)/bin/depgen.pl -i -t nmake
!ENDIF
!ENDIF

GENERATED_DIRTY =

!IF  "$(CFG)" == "Win32 Debug"

OUTDIR=.
INSTALLDIR=.
INTDIR=Debug\base\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\foo.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_CONSOLE -f "Makefile.base.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(INSTALLDIR)\foo.pdb"
        -@del /f/q "$(INSTALLDIR)\foo.exe"
        -@del /f/q "$(INSTALLDIR)\foo.ilk"

"$(INTDIR)" :
    if not exist "Debug\$(NULL)" mkdir "Debug"
    if not exist "Debug\base\$(NULL)" mkdir "Debug\base"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHs /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _CONSOLE /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:console /debug /pdb:"$(INSTALLDIR)\foo.pdb" /machine:I386 /out:"$(INSTALLDIR)\foo.exe"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

"$(INSTALLDIR)\foo.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\foo.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\foo.exe.manifest" -outputresource:$@;1

!ELSEIF  "$(CFG)" == "Win32 Release"

OUTDIR=Release
INSTALLDIR=Release
INTDIR=Release\base\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\foo.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_CONSOLE -f "Makefile.base.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(INSTALLDIR)\foo.exe"
        -@del /f/q "$(INSTALLDIR)\foo.ilk"

"$(INTDIR)" :
    if not exist "Release\$(NULL)" mkdir "Release"
    if not exist "Release\base\$(NULL)" mkdir "Release\base"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _CONSOLE /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:console  /machine:I386 /out:"$(INSTALLDIR)\foo.exe"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

"$(INSTALLDIR)\foo.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\foo.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\foo.exe.manifest" -outputresource:$@;1

!ELSEIF  "$(CFG)" == "Win32 Static Debug"

OUTDIR=Static_Debug
INSTALLDIR=Static_Debug
INTDIR=Static_Debug\base\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\foo.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -D_DEBUG -DWIN32 -D_CONSOLE -f "Makefile.base.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
	-@del /f/q "$(INSTALLDIR)\foo.pdb"
        -@del /f/q "$(INSTALLDIR)\foo.exe"
        -@del /f/q "$(INSTALLDIR)\foo.ilk"

"$(INTDIR)" :
    if not exist "Static_Debug\$(NULL)" mkdir "Static_Debug"
    if not exist "Static_Debug\base\$(NULL)" mkdir "Static_Debug\base"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /Ob0 /W3 /Gm /EHs /Zi /MDd /GR /Gy /Fd"$(INTDIR)/" /D _DEBUG /D WIN32 /D _CONSOLE /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:console /debug /pdb:"$(INSTALLDIR)\foo.pdb" /machine:I386 /out:"$(INSTALLDIR)\foo.exe"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

"$(INSTALLDIR)\foo.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\foo.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\foo.exe.manifest" -outputresource:$@;1

!ELSEIF  "$(CFG)" == "Win32 Static Release"

OUTDIR=Static_Release
INSTALLDIR=Static_Release
INTDIR=Static_Release\base\I386

ALL : DEPENDCHECK $(GENERATED_DIRTY) "$(INSTALLDIR)\foo.exe"

DEPEND :
!IF "$(DEPGEN)" == ""
	@echo No suitable dependency generator could be found.
	@echo You can check one out from OCI using the following cvs command:
	@echo cvs -d :pserver:anonymous@anoncvs.ociweb.com:/cvs co Depgen
	@echo Then set the DEPGEN_ROOT environment variable to the full path of Depgen.
!ELSE
	$(DEPGEN) -DNDEBUG -DWIN32 -D_CONSOLE -f "Makefile.base.dep" "foo.cpp"
!ENDIF

REALCLEAN : CLEAN
        -@del /f/q "$(INSTALLDIR)\foo.exe"
        -@del /f/q "$(INSTALLDIR)\foo.ilk"

"$(INTDIR)" :
    if not exist "Static_Release\$(NULL)" mkdir "Static_Release"
    if not exist "Static_Release\base\$(NULL)" mkdir "Static_Release\base"
    if not exist "$(INTDIR)\$(NULL)" mkdir "$(INTDIR)"

CPP=cl.exe
CPP_COMMON=/Zc:wchar_t /nologo /O2 /W3 /EHs /MD /GR /D NDEBUG /D WIN32 /D _CONSOLE /FD /c
CPP_PROJ=$(CPP_COMMON) /Fo"$(INTDIR)\\"

RSC=rc.exe

LINK32=link.exe
LINK32_FLAGS=advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:console  /machine:I386 /out:"$(INSTALLDIR)\foo.exe"
LINK32_OBJS= \
	"$(INTDIR)\foo.obj"

"$(INSTALLDIR)\foo.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<
    if exist "$(INSTALLDIR)\foo.exe.manifest" mt.exe -manifest "$(INSTALLDIR)\foo.exe.manifest" -outputresource:$@;1

!ENDIF

CLEAN :
	-@del /f/s/q "$(INTDIR)"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)\$(NULL)" mkdir "$(OUTDIR)"

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $<
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $<
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $<
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $<
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $<
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $<
<<

!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.base.dep")
!INCLUDE "Makefile.base.dep"
!ENDIF
!ENDIF

!IF "$(CFG)" == "Win32 Debug" || "$(CFG)" == "Win32 Release" || "$(CFG)" == "Win32 Static Debug" || "$(CFG)" == "Win32 Static Release" 
SOURCE="foo.cpp"

"$(INTDIR)\foo.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_COMMON) /Fo"$(INTDIR)\foo.obj" $(SOURCE)


!ENDIF

GENERATED : $(GENERATED_DIRTY)
	-@rem

DEPENDCHECK :
!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("Makefile.base.dep")
	@echo Using "Makefile.base.dep"
!ELSE
	@echo Warning: cannot find "Makefile.base.dep"
!ENDIF
!ENDIF
