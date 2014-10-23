#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
SET(CMAKE_IMPORT_FILE_VERSION 1)

# Compute the installation prefix relative to this file.
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)

# Import target "CameraComp" for configuration "Debug"
SET_PROPERTY(TARGET CameraComp APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
SET_TARGET_PROPERTIES(CameraComp PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/components/lib/CameraComp.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "RTC110d;coil110d;omniORB416_rtd;omniDynamic416_rtd;omnithread34_rtd;advapi32;ws2_32;mswsock;C:/opencv/build/x64/vc10/lib/opencv_calib3d245d.lib;C:/opencv/build/x64/vc10/lib/opencv_contrib245d.lib;C:/opencv/build/x64/vc10/lib/opencv_core245d.lib;C:/opencv/build/x64/vc10/lib/opencv_features2d245d.lib;C:/opencv/build/x64/vc10/lib/opencv_flann245d.lib;C:/opencv/build/x64/vc10/lib/opencv_gpu245d.lib;C:/opencv/build/x64/vc10/lib/opencv_highgui245d.lib;C:/opencv/build/x64/vc10/lib/opencv_imgproc245d.lib;C:/opencv/build/x64/vc10/lib/opencv_legacy245d.lib;C:/opencv/build/x64/vc10/lib/opencv_ml245d.lib;C:/opencv/build/x64/vc10/lib/opencv_nonfree245d.lib;C:/opencv/build/x64/vc10/lib/opencv_objdetect245d.lib;C:/opencv/build/x64/vc10/lib/opencv_photo245d.lib;C:/opencv/build/x64/vc10/lib/opencv_stitching245d.lib;C:/opencv/build/x64/vc10/lib/opencv_superres245d.lib;C:/opencv/build/x64/vc10/lib/opencv_ts245d.lib;C:/opencv/build/x64/vc10/lib/opencv_video245d.lib;C:/opencv/build/x64/vc10/lib/opencv_videostab245d.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/components/bin/CameraComp.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS CameraComp )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_CameraComp "${_IMPORT_PREFIX}/components/lib/CameraComp.lib" "${_IMPORT_PREFIX}/components/bin/CameraComp.dll" )

# Import target "CameraCompComp" for configuration "Debug"
SET_PROPERTY(TARGET CameraCompComp APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
SET_TARGET_PROPERTIES(CameraCompComp PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/components/bin/CameraCompComp.exe"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS CameraCompComp )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_CameraCompComp "${_IMPORT_PREFIX}/components/bin/CameraCompComp.exe" )

# Loop over all imported files and verify that they actually exist
FOREACH(target ${_IMPORT_CHECK_TARGETS} )
  FOREACH(file ${_IMPORT_CHECK_FILES_FOR_${target}} )
    IF(NOT EXISTS "${file}" )
      MESSAGE(FATAL_ERROR "The imported target \"${target}\" references the file
   \"${file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    ENDIF()
  ENDFOREACH()
  UNSET(_IMPORT_CHECK_FILES_FOR_${target})
ENDFOREACH()
UNSET(_IMPORT_CHECK_TARGETS)

# Cleanup temporary variables.
SET(_IMPORT_PREFIX)

# Commands beyond this point should not need to know the version.
SET(CMAKE_IMPORT_FILE_VERSION)
