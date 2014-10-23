# CameraComp CMake config file
#
# This file sets the following variables:
# CameraComp_FOUND - Always TRUE.
# CameraComp_INCLUDE_DIRS - Directories containing the CameraComp include files.
# CameraComp_IDL_DIRS - Directories containing the CameraComp IDL files.
# CameraComp_LIBRARIES - Libraries needed to use CameraComp.
# CameraComp_DEFINITIONS - Compiler flags for CameraComp.
# CameraComp_VERSION - The version of CameraComp found.
# CameraComp_VERSION_MAJOR - The major version of CameraComp found.
# CameraComp_VERSION_MINOR - The minor version of CameraComp found.
# CameraComp_VERSION_REVISION - The revision version of CameraComp found.
# CameraComp_VERSION_CANDIDATE - The candidate version of CameraComp found.

message(STATUS "Found CameraComp-1.0.0")
set(CameraComp_FOUND TRUE)

find_package(<dependency> REQUIRED)

#set(CameraComp_INCLUDE_DIRS
#    "C:/Program Files/CameraComp/include/cameracomp-1"
#    ${<dependency>_INCLUDE_DIRS}
#    )
#
#set(CameraComp_IDL_DIRS
#    "C:/Program Files/CameraComp/include/cameracomp-1/idl")
set(CameraComp_INCLUDE_DIRS
    "C:/Program Files/CameraComp/include/"
    ${<dependency>_INCLUDE_DIRS}
    )
set(CameraComp_IDL_DIRS
    "C:/Program Files/CameraComp/include//idl")


if(WIN32)
    set(CameraComp_LIBRARIES
        "C:/Program Files/CameraComp/components/lib/cameracomp.lib"
        ${<dependency>_LIBRARIES}
        )
else(WIN32)
    set(CameraComp_LIBRARIES
        "C:/Program Files/CameraComp/components/lib/cameracomp.dll"
        ${<dependency>_LIBRARIES}
        )
endif(WIN32)

set(CameraComp_DEFINITIONS ${<dependency>_DEFINITIONS})

set(CameraComp_VERSION 1.0.0)
set(CameraComp_VERSION_MAJOR 1)
set(CameraComp_VERSION_MINOR 0)
set(CameraComp_VERSION_REVISION 0)
set(CameraComp_VERSION_CANDIDATE )

