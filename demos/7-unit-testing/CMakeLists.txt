
# this is set by CTest
if (BUILD_TESTING)
    message(STATUS "Building the tests")

    # unit testing libraries
    include(FetchContent)
    FetchContent_Declare(
        Catch2
        GIT_REPOSITORY https://github.com/catchorg/Catch2
        GIT_TAG v3.6.0
    )
    FetchContent_MakeAvailable(Catch2)

    # link against    
    add_executable(7-unit-testing tests/test_factorial.cpp)
    target_link_libraries(7-unit-testing PUBLIC Catch2::Catch2WithMain)
    
    # catch can automatically discover tests, but we must include the Catch.cmake found under /exras
    list(APPEND CMAKE_MODULE_PATH ${catch2_SOURCE_DIR}/extras)
    include(Catch)
    catch_discover_tests(7-unit-testing)

endif()
