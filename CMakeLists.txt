cmake_minimum_required (VERSION 3.12)


set(UPSTREAM_VERSION 3.4.1)

add_subdirectory(02Math)
add_subdirectory(3rdParty/01FirstProject)

set(PROJ_NAME "03Submodule")
set(PROJ_TEST "Test${PROJ_NAME}")
set(PROJ_LIB "lib${PROJ_NAME}")

project(${PROJ_NAME})

set_property(TARGET lib02Math PROPERTY VERSION ${UPSTREAM_VERSION})

install(TARGETS lib02Math
  EXPORT lib02MathConfig
  RUNTIME DESTINATION ViveSDK/bin
  LIBRARY DESTINATION ViveSDK/lib
  ARCHIVE DESTINATION ViveSDK/lib
  INCLUDES DESTINATION ViveSDK/include
  )

install(EXPORT lib02MathConfig
    FILE lib02MathConfig.cmake
    DESTINATION ViveSDK
    NAMESPACE Vive::
)

install(DIRECTORY "${PROJECT_SOURCE_DIR}/02Math/include" DESTINATION ViveSDK)
