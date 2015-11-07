
cmake_minimum_required(VERSION 2.8)
project(cmdll)

set(CMAKE_BUILD_TYPE Release)
add_library(cmdll SHARED cm.cpp)
