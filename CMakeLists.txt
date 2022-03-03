cmake_minimum_required(VERSION 3.2)
set(CXX_FLAGS "-Wall")
set(CMAKE_CXX_FLAGS, "${CXX_FLAGS}")
set(CMAKE_BUILD_TYPE Debug)
project(zlib-test)
#main , zlibtest = executable
add_executable(zlibtest main.cpp)
#zlib 
add_subdirectory(zlib)
include_directories(zlibtest ${ZLIB_DEPS_DIR})
target_link_libraries(zlibtest zlib)
