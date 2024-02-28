# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/thanapoompumee/esp/esp-idf-v5.1/esp-idf/components/bootloader/subproject"
  "/Users/thanapoompumee/Documents/ESP/test_mesh_lite/test_mesh_lite/build/bootloader"
  "/Users/thanapoompumee/Documents/ESP/test_mesh_lite/test_mesh_lite/build/bootloader-prefix"
  "/Users/thanapoompumee/Documents/ESP/test_mesh_lite/test_mesh_lite/build/bootloader-prefix/tmp"
  "/Users/thanapoompumee/Documents/ESP/test_mesh_lite/test_mesh_lite/build/bootloader-prefix/src/bootloader-stamp"
  "/Users/thanapoompumee/Documents/ESP/test_mesh_lite/test_mesh_lite/build/bootloader-prefix/src"
  "/Users/thanapoompumee/Documents/ESP/test_mesh_lite/test_mesh_lite/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/thanapoompumee/Documents/ESP/test_mesh_lite/test_mesh_lite/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/thanapoompumee/Documents/ESP/test_mesh_lite/test_mesh_lite/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
