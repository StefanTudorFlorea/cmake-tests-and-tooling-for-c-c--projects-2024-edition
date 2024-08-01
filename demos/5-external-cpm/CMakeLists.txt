# target
set(SOURCES src/main.cpp)
add_executable(5-external-cpm ${SOURCES})

# 3rd-party
include(CPM)
CPMAddPackage("gh:fmtlib/fmt#11.0.2")
CPMAddPackage("gh:jarro2783/cxxopts#v3.2.0")
CPMAddPackage("gh:doctest/doctest#v2.4.11")

# link
target_link_libraries(5-external-cpm PRIVATE fmt::fmt cxxopts::cxxopts doctest::doctest)
