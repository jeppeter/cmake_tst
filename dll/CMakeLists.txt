
cmake_minimum_required(VERSION 2.8)
project(cm)

set(CMAKE_BUILD_TYPE Release)

if (MSVC)
	add_definitions(-DUNICODE -D_UNICODE)
endif()
add_subdirectory(cmdll)
