# Microsoft Developer Studio Project File - Name="one" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=one - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE run the tool that generated this project file and specify the
!MESSAGE nmake output type.  You can then use the following command:
!MESSAGE
!MESSAGE NMAKE.
!MESSAGE
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE CFG="one - Win32 Debug"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "one - Win32 Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "one - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "one - Win32 Debug"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ""
# PROP Intermediate_Dir "Debug\one"
# PROP Target_Dir ""
LINK32=link.exe -lib
# ADD CPP /nologo /Ob0 /W3 /Gm /GX /Zi /MDd /GR /Gy /Fd"..\..\lib\oned.pdb" /D _DEBUG /D WIN32 /D _WINDOWS /D FAILURE_TRIGGER /FD /c
# SUBTRACT CPP /Fr /YX

# ADD MTL /D "_DEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d _DEBUG /d FAILURE_TRIGGER
BSC32=bscmake.exe
# ADD BSC32 /nologo /o"..\..\lib\one.bsc"
LIB32=link.exe -lib
# ADD LIB32 /nologo /out:"..\..\lib\oned.lib"

!ELSEIF  "$(CFG)" == "one - Win32 Release"

# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release\one"
# PROP Target_Dir ""
LINK32=link.exe -lib
# ADD CPP /nologo /O2 /W3 /GX /MD /GR /D NDEBUG /D WIN32 /D _WINDOWS /D FAILURE_TRIGGER /FD /c
# SUBTRACT CPP /YX

# ADD MTL /D "NDEBUG" /nologo /mktyplib203 /win32
# ADD RSC /l 0x409 /d NDEBUG /d FAILURE_TRIGGER
BSC32=bscmake.exe
# ADD BSC32 /nologo /o"..\..\lib\one.bsc"
LIB32=link.exe -lib
# ADD LIB32 /nologo /out:"..\..\lib\one.lib"

!ENDIF

# Begin Target

# Name "one - Win32 Debug"
# Name "one - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;cxx;c"
# Begin Source File

SOURCE="foo.cpp"
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hh"
# Begin Source File

SOURCE="foo.h"
# End Source File
# End Group
# End Target
# End Project
