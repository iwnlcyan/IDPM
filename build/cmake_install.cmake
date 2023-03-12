# Install script for directory: E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files/OpenMesh")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/libdata/pkgconfig" TYPE FILE FILES "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/openmesh.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/OpenMesh/cmake/OpenMeshConfig.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/OpenMesh/cmake/OpenMeshConfig.cmake"
         "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/CMakeFiles/Export/share/OpenMesh/cmake/OpenMeshConfig.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/OpenMesh/cmake/OpenMeshConfig-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/OpenMesh/cmake/OpenMeshConfig.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenMesh/cmake" TYPE FILE FILES "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/CMakeFiles/Export/share/OpenMesh/cmake/OpenMeshConfig.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenMesh/cmake" TYPE FILE FILES "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/CMakeFiles/Export/share/OpenMesh/cmake/OpenMeshConfig-debug.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenMesh/cmake" TYPE FILE FILES "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/CMakeFiles/Export/share/OpenMesh/cmake/OpenMeshConfig-minsizerel.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenMesh/cmake" TYPE FILE FILES "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/CMakeFiles/Export/share/OpenMesh/cmake/OpenMeshConfig-relwithdebinfo.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/OpenMesh/cmake" TYPE FILE FILES "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/CMakeFiles/Export/share/OpenMesh/cmake/OpenMeshConfig-release.cmake")
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Core/cmake_install.cmake")
  include("E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Tools/cmake_install.cmake")
  include("E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Apps/cmake_install.cmake")
  include("E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/Unittests/cmake_install.cmake")
  include("E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Doc/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
