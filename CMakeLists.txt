cmake_minimum_required (VERSION 3.12)


add_subdirectory(02Math)
add_subdirectory(02Algorithm)

set(PROJ_NAME "03Submodule")
set(PROJ_TEST "Test${PROJ_NAME}")
set(PROJ_LIB "lib${PROJ_NAME}")

project(${PROJ_NAME})

set(VIVE_TARGETS lib02Math lib02Algorithm)


install(DIRECTORY "${PROJECT_SOURCE_DIR}/02Math/include" DESTINATION ViveSDK)

install(DIRECTORY "${PROJECT_SOURCE_DIR}/02Algorithm/include" DESTINATION ViveSDK)


install(TARGETS ${VIVE_TARGETS} EXPORT ViveSDKConfig
  RUNTIME DESTINATION ViveSDK/bin
  LIBRARY DESTINATION ViveSDK/lib
  ARCHIVE DESTINATION ViveSDK/lib
  INCLUDES DESTINATION ViveSDK/include
)

install(EXPORT ViveSDKConfig
    FILE ViveSDKConfig.cmake DESTINATION ViveSDK
)
