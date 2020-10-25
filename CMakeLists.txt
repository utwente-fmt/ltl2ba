cmake_minimum_required(VERSION 3.0)

project(ltl2ba VERSION 1.1)

enable_language(C)
set(CMAKE_C_STANDARD 99)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DNXT")

add_library(ltl2ba STATIC
			parse.c
			lex.c
			trans.c
			buchi.c
			set.c
			mem.c
			rewrt.c
			cache.c
			alternating.c
			generalized.c
			util.c
			ltl2ba.h
)
target_include_directories(ltl2ba PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/lib)

add_executable(main main.c ltl2ba.h)
set_target_properties(main PROPERTIES OUTPUT_NAME ltl2ba)
target_link_libraries(main ltl2ba)

