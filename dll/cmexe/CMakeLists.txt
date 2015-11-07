
project(cmexe)
if (MSVC)
	project(cmexe)
	add_executable(cmexe cmexe.cpp)
	target_include_directories(cmexe PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../cmdll)
	target_link_libraries(cmexe cmdll)
endif()