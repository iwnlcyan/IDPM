# Install script for directory: E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/src/OpenMesh/Core

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
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Core/Debug/OpenMeshCored.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Core/Release/OpenMeshCore.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Core/MinSizeRel/OpenMeshCore.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Core/RelWithDebInfo/OpenMeshCore.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/lib/OpenMeshCore.lib"
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/lib/OpenMeshCored.lib"
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/lib/OpenMeshTools.lib"
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/lib/OpenMeshToolsd.lib"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/Qt5Core.dll"
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/Qt5Gui.dll"
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/Qt5OpenGL.dll"
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/Qt5Widgets.dll"
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/icudt58.dll"
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/icuin58.dll"
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/icuuc58.dll"
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/libpng16.dll"
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/zlib.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenMesh/Core" TYPE DIRECTORY FILES "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/src/OpenMesh/Core/." FILES_MATCHING REGEX "/[^/]*\\.hh$" REGEX "/cvs$" EXCLUDE REGEX "/\\.svn$" EXCLUDE REGEX "/tmp$" EXCLUDE REGEX "/templates$" EXCLUDE REGEX "/debian[^/]*$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenMesh/Core/System" TYPE FILE FILES "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/src/OpenMesh/Core/System/config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenMesh/Core/IO" TYPE DIRECTORY FILES "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/src/OpenMesh/Core/IO/" FILES_MATCHING REGEX "/[^/]*\\.inl$" REGEX "/cvs$" EXCLUDE REGEX "/\\.svn$" EXCLUDE REGEX "/reader$" EXCLUDE REGEX "/writer$" EXCLUDE REGEX "/importer$" EXCLUDE REGEX "/exporter$" EXCLUDE REGEX "/tmp$" EXCLUDE REGEX "/debian[^/]*$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Core/Debug/OpenMeshCored.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Core/Release/OpenMeshCore.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Core/MinSizeRel/OpenMeshCore.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Core/RelWithDebInfo/OpenMeshCore.lib")
  endif()
endif()

