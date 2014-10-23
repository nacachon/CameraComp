#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
SET(CMAKE_IMPORT_FILE_VERSION 1)

# Compute the installation prefix relative to this file.
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
GET_FILENAME_COMPONENT(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)

# Import target "CameraComp" for configuration "Release"
SET_PROPERTY(TARGET CameraComp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(CameraComp PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/components/lib/CameraComp.lib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "RTC110;coil110;omniORB416_rt;omniDynamic416_rt;omnithread34_rt;advapi32;ws2_32;mswsock;C:/opencv/build/x64/vc10/lib/opencv_calib3d245.lib;C:/opencv/build/x64/vc10/lib/opencv_contrib245.lib;C:/opencv/build/x64/vc10/lib/opencv_core245.lib;C:/opencv/build/x64/vc10/lib/opencv_features2d245.lib;C:/opencv/build/x64/vc10/lib/opencv_flann245.lib;C:/opencv/build/x64/vc10/lib/opencv_gpu245.lib;C:/opencv/build/x64/vc10/lib/opencv_highgui245.lib;C:/opencv/build/x64/vc10/lib/opencv_imgproc245.lib;C:/opencv/build/x64/vc10/lib/opencv_legacy245.lib;C:/opencv/build/x64/vc10/lib/opencv_ml245.lib;C:/opencv/build/x64/vc10/lib/opencv_nonfree245.lib;C:/opencv/build/x64/vc10/lib/opencv_objdetect245.lib;C:/opencv/build/x64/vc10/lib/opencv_photo245.lib;C:/opencv/build/x64/vc10/lib/opencv_stitching245.lib;C:/opencv/build/x64/vc10/lib/opencv_superres245.lib;C:/opencv/build/x64/vc10/lib/opencv_ts245.lib;C:/opencv/build/x64/vc10/lib/opencv_video245.lib;C:/opencv/build/x64/vc10/lib/opencv_videostab245.lib"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/components/bin/CameraComp.dll"
  )

LIST(APPEND _IMPORT_CHECK_TARGETS CameraComp )
LIST(APPEND _IMPORT_CHECK_FILES_FOR_CameraComp "${_IMPORT_PREFIX}/components/lib/CameraComp.lib" "${_IMPORT_PREFIX}/components/bin/CameraComp.dll" )

# Import target "CameraCompComp" for configuration "Release"
SET_PROPERTY(TARGET CameraCompComp APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
SET_TARGET_PROPERTIES(CameraCompComp PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/components/bin/CameraCompComp.exe"
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
