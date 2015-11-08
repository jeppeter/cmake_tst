
cmake_minimum_required(VERSION 2.8)
project(cm)

set(CMAKE_BUILD_TYPE Release)

if (MSVC)
	add_definitions(-DUNICODE -D_UNICODE)
	set(CMAKE_CONFIGURATION_TYPES "Debug;Release")
endif()
add_subdirectory(cmlib)
add_subdirectory(cmdll)
add_subdirectory(cmexe)
