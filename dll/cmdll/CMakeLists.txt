
cmake_minimum_required(VERSION 2.8)
project(cmdll)

if (MSVC)
	set(CMAKE_BUILD_TYPE Release)
	add_library(cmdll SHARED cm.cpp)
	add_definitions(/DCM_EXPORTS)
	#target_compile_definitions(cmdll PUBLIC CM_EXPORTS)
	target_include_directories(cmdll PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../cmlib)
	target_link_libraries(cmdll cmlib)
endif()

