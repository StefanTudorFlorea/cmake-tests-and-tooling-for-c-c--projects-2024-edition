# do not allow in source builds
if(${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR}})
    message(FATAL_ERROR "In source builds are not allowed")
endif()

# no build type specified
if (${CMAKE_BUILD_TYPE} STREQUAL "")
    message(FATAL_ERROR "Please specify a build type")
endif()