# Install script for directory: /Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/relic" TYPE FILE FILES
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_alloc.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_arch.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_bc.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_bench.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_bn.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_core.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_cp.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_dv.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_eb.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_ec.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_ed.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_ep.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_epx.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_err.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_fb.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_fbx.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_fp.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_fpx.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_label.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_md.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_mpc.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_multi.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_pc.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_pp.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_rand.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_test.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_types.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/relic_util.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/relic/low" TYPE FILE FILES
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/low/relic_bn_low.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/low/relic_dv_low.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/low/relic_fb_low.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/low/relic_fp_low.h"
    "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/include/low/relic_fpx_low.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/relic" TYPE DIRECTORY FILES "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/target/include/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/cmake" TYPE FILE FILES "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/src/cmake/relic-config.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/target/src/cmake_install.cmake")
  include("/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/target/test/cmake_install.cmake")
  include("/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/target/bench/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/Users/wangjiawei/Desktop/mktpfl-singlesv/mkTPFL/srcs-cpython/MKLHS-Python/MKLHS/relic/target/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
