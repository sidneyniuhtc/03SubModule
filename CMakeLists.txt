cmake_minimum_required (VERSION 3.12)

add_subdirectory(02Math)
add_subdirectory(3rdParty/01FirstProject)

set(PROJ_NAME "03Submodule")
set(PROJ_TEST "Test${PROJ_NAME}")
set(PROJ_LIB "lib${PROJ_NAME}")

project(${PROJ_NAME})

install(TARGETS lib02Math DESTINATION lib)

file(GLOB_RECURSE MATH_HEADERS "${PROJECT_SOURCE_DIR}/02Math/include/*.hpp")

install(DIRECTORY "${PROJECT_SOURCE_DIR}/02Math/include" DESTINATION include)
