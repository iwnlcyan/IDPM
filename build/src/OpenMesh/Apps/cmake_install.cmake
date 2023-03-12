# Install script for directory: E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/src/OpenMesh/Apps

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/plugins/platforms" TYPE FILE FILES
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/plugins/platforms/qdirect2d.dll"
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/plugins/platforms/qdirect2dd.dll"
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/plugins/platforms/qminimal.dll"
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/plugins/platforms/qminimald.dll"
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/plugins/platforms/qoffscreen.dll"
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/plugins/platforms/qoffscreend.dll"
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/plugins/platforms/qwebgl.dll"
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/plugins/platforms/qwebgld.dll"
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/plugins/platforms/qwindows.dll"
    "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/Build/plugins/platforms/qwindowsd.dll"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/." TYPE FILE FILES "E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/src/OpenMesh/Apps/Qt/qt.conf")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Apps/Dualizer/cmake_install.cmake")
  include("E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Apps/Decimating/commandlineDecimater/cmake_install.cmake")
  include("E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Apps/Smoothing/cmake_install.cmake")
  include("E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Apps/Subdivider/commandlineSubdivider/cmake_install.cmake")
  include("E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Apps/Subdivider/commandlineAdaptiveSubdivider/cmake_install.cmake")
  include("E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Apps/mconvert/cmake_install.cmake")
  include("E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Apps/VDProgMesh/mkbalancedpm/cmake_install.cmake")
  include("E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Apps/VDProgMesh/Analyzer/cmake_install.cmake")
  include("E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Apps/Decimating/DecimaterGui/cmake_install.cmake")
  include("E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Apps/QtViewer/cmake_install.cmake")
  include("E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Apps/Subdivider/SubdividerGui/cmake_install.cmake")
  include("E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Apps/ProgViewer/cmake_install.cmake")
  include("E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Apps/VDProgMesh/Synthesizer/cmake_install.cmake")
  include("E:/1KMD课程/Research/Illumination Guided LOD/IDPM/OpenMesh-9.0/OpenMesh-9.0.0/build/src/OpenMesh/Apps/IDPM/cmake_install.cmake")

endif()

