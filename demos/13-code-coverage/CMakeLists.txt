#------------------------------------------------------------------------------
# targets
#------------------------------------------------------------------------------
add_library(foo src/foo/foo.cpp)
target_include_directories(foo PUBLIC src/)

add_library(bar src/bar/bar.cpp)
target_include_directories(bar PUBLIC src/)

#------------------------------------------------------------------------------
# tests
#------------------------------------------------------------------------------
include(CPM)
CPMAddPackage("gh:catchorg/Catch2#v3.6.0")

add_executable(test-foo tests/test_foo.cpp)
target_link_libraries(test-foo PRIVATE foo Catch2::Catch2WithMain)
catch_discover_tests(test-foo)

add_executable(test-bar tests/test_bar.cpp)
target_link_libraries(test-bar PRIVATE bar Catch2::Catch2WithMain)
catch_discover_tests(test-bar)

#------------------------------------------------------------------------------
# coverage
#------------------------------------------------------------------------------
option(ENABLE_COVERAGE "Turn on/off code coverage" ON)
if (ENABLE_COVERAGE)

    # find required tool
    find_program(GCOVR gcovr)
    if (NOT GCOVR) 
        message(FATAL_ERROR "[coverage]: Could not find required tool for coverage")
    endif()


endif()