# Microsoft Developer Studio Project File - Name="foo" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=foo - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE run the tool that generated this project file and specify the
!MESSAGE nmake output type.  You can then use the following command:
!MESSAGE
!MESSAGE NMAKE.
!MESSAGE
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE CFG="foo - Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "foo - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "foo - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "foo - Win32 Debug"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "."
# PROP Intermediate_Dir "Debug\foo"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD CPP /nologo /Ob0 /W3 /Gm /GX /Zi /MDd /GR /Gy /Fd"Debug\foo/" /D _DEBUG /D WIN32 /D _WINDOWS /FD /c
# SUBTRACT CPP /Fr /YX

# ADD MTL /D "_DEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d _DEBUG
BSC32=bscmake.exe
# ADD BSC32 /nologo /o".\foo.bsc"
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /pdb:".\food.pdb" /implib:".\food.lib" /dll /debug /machine:I386 /out:".\food.dll"

!ELSEIF  "$(CFG)" == "foo - Win32 Release"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "."
# PROP Intermediate_Dir "Release\foo"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD CPP /nologo /O2 /W3 /GX /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /FD /c
# SUBTRACT CPP /YX

# ADD MTL /D "NDEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d NDEBUG
BSC32=bscmake.exe
# ADD BSC32 /nologo /o".\foo.bsc"
LINK32=link.exe
# ADD LINK32 advapi32.lib user32.lib /INCREMENTAL:NO /libpath:"." /nologo /subsystem:windows /pdb:none /implib:".\foo.lib" /dll  /machine:I386 /out:".\foo.dll"

!ENDIF

# Begin Target

# Name "foo - Win32 Debug"
# Name "foo - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;cxx;c"
# Begin Source File

SOURCE="foo.cpp"
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hh"
# Begin Source File

SOURCE="something_export.h"
# End Source File
# End Group
# Begin Group "Documentation"

# PROP Default_Filter ""
# Begin Source File

SOURCE="nospace.txt"
# End Source File
# Begin Source File

SOURCE="space 1.txt"
# End Source File
# Begin Source File

SOURCE="space 2.txt"
# End Source File
# Begin Source File

SOURCE="space 3.txt"
# End Source File
# End Group
# Begin Group "Foo Files"

# PROP Default_Filter "ar"
# Begin Source File

SOURCE="bar.ar"

!IF  "$(CFG)" == "foo - Win32 Debug"

USERDEP__bar="nospace.txt" "space 1.txt" "someExecutable.exe" ".\.libs\somelibd.dll"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking echo on $(InputPath)
InputPath="bar.ar"

BuildCmds= \
	echo  $(InputPath) > "bar.cr" \

"bar.cr" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "foo - Win32 Release"

USERDEP__bar="nospace.txt" "space 1.txt" "someExecutable.exe" ".\.libs\somelib.dll"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking echo on $(InputPath)
InputPath="bar.ar"

BuildCmds= \
	echo  $(InputPath) > "bar.cr" \

"bar.cr" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# Begin Source File

SOURCE="foo.ar"

!IF  "$(CFG)" == "foo - Win32 Debug"

USERDEP__foo="nospace.txt" "space 1.txt" "someExecutable.exe" "space 2.txt" "space 3.txt" ".\.libs\somelibd.dll"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking echo on $(InputPath)
InputPath="foo.ar"

BuildCmds= \
	echo  $(InputPath) > "foo.cr" \

"foo.cr" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "foo - Win32 Release"

USERDEP__foo="nospace.txt" "space 1.txt" "someExecutable.exe" "space 2.txt" "space 3.txt" ".\.libs\somelib.dll"
# PROP Ignore_Default_Tool 1
# Begin Custom Build - Invoking echo on $(InputPath)
InputPath="foo.ar"

BuildCmds= \
	echo  $(InputPath) > "foo.cr" \

"foo.cr" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF

# End Source File
# End Group
# End Target
# End Project
