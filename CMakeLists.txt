cmake_minimum_required(VERSION 2.8)
project(simple_ios)

if(NOT XCODE_VERSION)
  message(FATAL_ERROR "Xcode only")
endif()

set(CMAKE_OSX_SYSROOT "iphoneos")
add_executable(my MACOSX_BUNDLE AppDelegate.h AppDelegate.mm main.mm)
get_filename_component(PLIST "./Info.plist.in" ABSOLUTE)

set_target_properties(
    my
    PROPERTIES
    XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY
    "iPhone Developer"
)

set_target_properties(
    my
    PROPERTIES
    MACOSX_BUNDLE_INFO_PLIST
    "${PLIST}"
)

set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -framework CoreGraphics")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -framework Foundation")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -framework UIKit")
