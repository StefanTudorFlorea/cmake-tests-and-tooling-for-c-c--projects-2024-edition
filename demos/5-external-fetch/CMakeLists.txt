# add 3rd-party as fetch
include(FetchContent)

# 1.declare
FetchContent_Declare(
    fmt
    GIT_REPOSITORY https://github.com/fmtlib/fmt
    GIT_VERSION 11.0.2
)
FetchContent_Declare(
    cxxopts 
    GIT_REPOSITORY https://github.com/jarro2783/cxxopts
    GIT_VERSION v3.2.0
)


# 2.make available
FetchContent_MakeAvailable(fmt)
FetchContent_MakeAvailable(cxxopts)


# link against deps
add_executable(5-external-fetch src/main.cpp)
target_link_libraries(5-external-fetch 
    PUBLIC
        fmt::fmt
        cxxopts::cxxopts
)