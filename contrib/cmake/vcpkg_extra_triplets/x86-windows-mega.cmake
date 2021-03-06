
set(VCPKG_VISUAL_STUDIO_PATH "C:\\Program Files (x86)\\Microsoft Visual Studio\\2017\\Professional")
set(VCPKG_PLATFORM_TOOLSET v140)

set(VCPKG_TARGET_ARCHITECTURE x86)

# use dynamic C and CPP libraries (needed if we use any DLLs, eg Qt)
set(VCPKG_CRT_LINKAGE dynamic)

if(PORT MATCHES "ffmpeg" OR 
   PORT MATCHES "openssl" OR 
   PORT MATCHES "curl" OR 
   PORT MATCHES "c-ares")
    # build this library as DLL (usually because it is LGPL licensed)
    set(VCPKG_LIBRARY_LINKAGE dynamic)
else()
    # build this library statically (much simpler installation, debugging, etc)
	set(VCPKG_LIBRARY_LINKAGE static)
endif()
