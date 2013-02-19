# Microsoft Developer Studio Generated NMAKE File, Based on mod_example_hooks.dsp
!IF "$(CFG)" == ""
CFG=mod_example_hooks - Win32 Debug
!MESSAGE No configuration specified. Defaulting to mod_example_hooks - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "mod_example_hooks - Win32 Release" && "$(CFG)" != "mod_example_hooks - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "mod_example_hooks.mak" CFG="mod_example_hooks - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "mod_example_hooks - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mod_example_hooks - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "mod_example_hooks - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\mod_example_hooks.so"

!ELSE 

ALL : "libhttpd - Win32 Release" "libaprutil - Win32 Release" "libapr - Win32 Release" "$(OUTDIR)\mod_example_hooks.so"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"libapr - Win32 ReleaseCLEAN" "libaprutil - Win32 ReleaseCLEAN" "libhttpd - Win32 ReleaseCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\mod_example_hooks.obj"
	-@erase "$(INTDIR)\mod_example_hooks.res"
	-@erase "$(INTDIR)\mod_example_hooks_src.idb"
	-@erase "$(INTDIR)\mod_example_hooks_src.pdb"
	-@erase "$(OUTDIR)\mod_example_hooks.exp"
	-@erase "$(OUTDIR)\mod_example_hooks.lib"
	-@erase "$(OUTDIR)\mod_example_hooks.pdb"
	-@erase "$(OUTDIR)\mod_example_hooks.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /Zi /O2 /Oy- /I "../../include" /I "../../srclib/apr/include" /I "../../srclib/apr-util/include" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_example_hooks_src" /FD /c 

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

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /o /win32 "NUL" 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\mod_example_hooks.res" /i "../../include" /i "../../srclib/apr/include" /d "NDEBUG" /d BIN_NAME="mod_example_hooks.so" /d LONG_NAME="example_hooks_module for Apache" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_example_hooks.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_example_hooks.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\mod_example_hooks.so" /implib:"$(OUTDIR)\mod_example_hooks.lib" /base:@..\..\os\win32\BaseAddr.ref,mod_example_hooks.so /opt:ref 
LINK32_OBJS= \
	"$(INTDIR)\mod_example_hooks.obj" \
	"$(INTDIR)\mod_example_hooks.res" \
	"..\..\srclib\apr\Release\libapr-1.lib" \
	"..\..\srclib\apr-util\Release\libaprutil-1.lib" \
	"..\..\Release\libhttpd.lib"

"$(OUTDIR)\mod_example_hooks.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Release\mod_example_hooks.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

$(DS_POSTBUILD_DEP) : "libhttpd - Win32 Release" "libaprutil - Win32 Release" "libapr - Win32 Release" "$(OUTDIR)\mod_example_hooks.so"
   if exist .\Release\mod_example_hooks.so.manifest mt.exe -manifest .\Release\mod_example_hooks.so.manifest -outputresource:.\Release\mod_example_hooks.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ELSEIF  "$(CFG)" == "mod_example_hooks - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

!IF "$(RECURSE)" == "0" 

ALL : "$(OUTDIR)\mod_example_hooks.so"

!ELSE 

ALL : "libhttpd - Win32 Debug" "libaprutil - Win32 Debug" "libapr - Win32 Debug" "$(OUTDIR)\mod_example_hooks.so"

!ENDIF 

!IF "$(RECURSE)" == "1" 
CLEAN :"libapr - Win32 DebugCLEAN" "libaprutil - Win32 DebugCLEAN" "libhttpd - Win32 DebugCLEAN" 
!ELSE 
CLEAN :
!ENDIF 
	-@erase "$(INTDIR)\mod_example_hooks.obj"
	-@erase "$(INTDIR)\mod_example_hooks.res"
	-@erase "$(INTDIR)\mod_example_hooks_src.idb"
	-@erase "$(INTDIR)\mod_example_hooks_src.pdb"
	-@erase "$(OUTDIR)\mod_example_hooks.exp"
	-@erase "$(OUTDIR)\mod_example_hooks.lib"
	-@erase "$(OUTDIR)\mod_example_hooks.pdb"
	-@erase "$(OUTDIR)\mod_example_hooks.so"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Zi /Od /I "../../include" /I "../../srclib/apr/include" /I "../../srclib/apr-util/include" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\mod_example_hooks_src" /FD /EHsc /c 

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

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /o /win32 "NUL" 
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\mod_example_hooks.res" /i "../../include" /i "../../srclib/apr/include" /d "_DEBUG" /d BIN_NAME="mod_example_hooks.so" /d LONG_NAME="example_hooks_module for Apache" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\mod_example_hooks.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib /nologo /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)\mod_example_hooks.pdb" /debug /machine:IX86 /out:"$(OUTDIR)\mod_example_hooks.so" /implib:"$(OUTDIR)\mod_example_hooks.lib" /base:@..\..\os\win32\BaseAddr.ref,mod_example_hooks.so 
LINK32_OBJS= \
	"$(INTDIR)\mod_example_hooks.obj" \
	"$(INTDIR)\mod_example_hooks.res" \
	"..\..\srclib\apr\Debug\libapr-1.lib" \
	"..\..\srclib\apr-util\Debug\libaprutil-1.lib" \
	"..\..\Release\libhttpd.lib"

"$(OUTDIR)\mod_example_hooks.so" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

TargetPath=.\Debug\mod_example_hooks.so
SOURCE="$(InputPath)"
PostBuild_Desc=Embed .manifest
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

$(DS_POSTBUILD_DEP) : "libhttpd - Win32 Debug" "libaprutil - Win32 Debug" "libapr - Win32 Debug" "$(OUTDIR)\mod_example_hooks.so"
   if exist .\Debug\mod_example_hooks.so.manifest mt.exe -manifest .\Debug\mod_example_hooks.so.manifest -outputresource:.\Debug\mod_example_hooks.so;2
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("mod_example_hooks.dep")
!INCLUDE "mod_example_hooks.dep"
!ELSE 
!MESSAGE Warning: cannot find "mod_example_hooks.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "mod_example_hooks - Win32 Release" || "$(CFG)" == "mod_example_hooks - Win32 Debug"

!IF  "$(CFG)" == "mod_example_hooks - Win32 Release"

"libapr - Win32 Release" : 
   cd "$(SRCROOT)\srclib\apr"
   $(MAKE) /$(MAKEFLAGS) /F ".\libapr.mak" CFG="libapr - Win32 Release" 
   cd "..\..\modules\examples"

"libapr - Win32 ReleaseCLEAN" : 
   cd "$(SRCROOT)\srclib\apr"
   $(MAKE) /$(MAKEFLAGS) /F ".\libapr.mak" CFG="libapr - Win32 Release" RECURSE=1 CLEAN 
   cd "..\..\modules\examples"

!ELSEIF  "$(CFG)" == "mod_example_hooks - Win32 Debug"

"libapr - Win32 Debug" : 
   cd "$(SRCROOT)\srclib\apr"
   $(MAKE) /$(MAKEFLAGS) /F ".\libapr.mak" CFG="libapr - Win32 Debug" 
   cd "..\..\modules\examples"

"libapr - Win32 DebugCLEAN" : 
   cd "$(SRCROOT)\srclib\apr"
   $(MAKE) /$(MAKEFLAGS) /F ".\libapr.mak" CFG="libapr - Win32 Debug" RECURSE=1 CLEAN 
   cd "..\..\modules\examples"

!ENDIF 

!IF  "$(CFG)" == "mod_example_hooks - Win32 Release"

"libaprutil - Win32 Release" : 
   cd "$(SRCROOT)\srclib\apr-util"
   $(MAKE) /$(MAKEFLAGS) /F ".\libaprutil.mak" CFG="libaprutil - Win32 Release" 
   cd "..\..\modules\examples"

"libaprutil - Win32 ReleaseCLEAN" : 
   cd "$(SRCROOT)\srclib\apr-util"
   $(MAKE) /$(MAKEFLAGS) /F ".\libaprutil.mak" CFG="libaprutil - Win32 Release" RECURSE=1 CLEAN 
   cd "..\..\modules\examples"

!ELSEIF  "$(CFG)" == "mod_example_hooks - Win32 Debug"

"libaprutil - Win32 Debug" : 
   cd "$(SRCROOT)\srclib\apr-util"
   $(MAKE) /$(MAKEFLAGS) /F ".\libaprutil.mak" CFG="libaprutil - Win32 Debug" 
   cd "..\..\modules\examples"

"libaprutil - Win32 DebugCLEAN" : 
   cd "$(SRCROOT)\srclib\apr-util"
   $(MAKE) /$(MAKEFLAGS) /F ".\libaprutil.mak" CFG="libaprutil - Win32 Debug" RECURSE=1 CLEAN 
   cd "..\..\modules\examples"

!ENDIF 

!IF  "$(CFG)" == "mod_example_hooks - Win32 Release"

"libhttpd - Win32 Release" : 
   cd "$(SRCROOT)"
   $(MAKE) /$(MAKEFLAGS) /F ".\libhttpd.mak" CFG="libhttpd - Win32 Release" 
   cd ".\modules\examples"

"libhttpd - Win32 ReleaseCLEAN" : 
   cd "$(SRCROOT)"
   $(MAKE) /$(MAKEFLAGS) /F ".\libhttpd.mak" CFG="libhttpd - Win32 Release" RECURSE=1 CLEAN 
   cd ".\modules\examples"

!ELSEIF  "$(CFG)" == "mod_example_hooks - Win32 Debug"

"libhttpd - Win32 Debug" : 
   cd "$(SRCROOT)"
   $(MAKE) /$(MAKEFLAGS) /F ".\libhttpd.mak" CFG="libhttpd - Win32 Debug" 
   cd ".\modules\examples"

"libhttpd - Win32 DebugCLEAN" : 
   cd "$(SRCROOT)"
   $(MAKE) /$(MAKEFLAGS) /F ".\libhttpd.mak" CFG="libhttpd - Win32 Debug" RECURSE=1 CLEAN 
   cd ".\modules\examples"

!ENDIF 

SOURCE=..\..\build\win32\httpd.rc

!IF  "$(CFG)" == "mod_example_hooks - Win32 Release"


"$(INTDIR)\mod_example_hooks.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\mod_example_hooks.res" /i "../../include" /i "../../srclib/apr/include" /i "$(SRCROOT)\build\win32" /d "NDEBUG" /d BIN_NAME="mod_example_hooks.so" /d LONG_NAME="example_hooks_module for Apache" $(SOURCE)


!ELSEIF  "$(CFG)" == "mod_example_hooks - Win32 Debug"


"$(INTDIR)\mod_example_hooks.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\mod_example_hooks.res" /i "../../include" /i "../../srclib/apr/include" /i "$(SRCROOT)\build\win32" /d "_DEBUG" /d BIN_NAME="mod_example_hooks.so" /d LONG_NAME="example_hooks_module for Apache" $(SOURCE)


!ENDIF 

SOURCE=.\mod_example_hooks.c

"$(INTDIR)\mod_example_hooks.obj" : $(SOURCE) "$(INTDIR)"



!ENDIF 
