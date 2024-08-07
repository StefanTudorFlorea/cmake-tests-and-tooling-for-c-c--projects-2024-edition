# mandatory to keep up to date with lates versions
cmake_minimum_required(VERSION 3.28)
project("cmake-tests-and-tooling-for-c-c++-projects-2024-edition" VERSION 1.0.0 LANGUAGES C CXX)

# config
set(CMAKE_CXX_STANDARD   20)
set(CMAKE_CXX_EXTENSIONS OFF)

# find our custom functions and modules
set(CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake)
include(CTest)            # let cmake also know about testing
include(ConfigSafeGuards) # general checks

# add demos
add_subdirectory(demos/1-hello-world)
add_subdirectory(demos/2-project-structure)
add_subdirectory(demos/3-variables-options)
add_subdirectory(demos/4-config-files)
add_subdirectory(demos/5-external-submodule)
add_subdirectory(demos/5-external-fetch)
add_subdirectory(demos/5-external-cpm)
add_subdirectory(demos/6-documentation)
add_subdirectory(demos/7-unit-testing)
add_subdirectory(demos/8-warnings)
add_subdirectory(demos/9-sanitizers)
add_subdirectory(demos/10-generators)
add_subdirectory(demos/11-clang-tidy)
add_subdirectory(demos/12-clang-format)
add_subdirectory(demos/13-code-coverage)