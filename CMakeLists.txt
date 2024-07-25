# mandatory to keep up to date with lates versions
cmake_minimum_required(VERSION 3.28)
project("cmake-tests-and-tooling-for-c-c++-projects-2024-edition" VERSION 1.0.0 LANGUAGES C CXX)

# utils
set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake/)
include(AddGitSubmodule)

# config
set(CMAKE_CXX_STANDARD   20)
set(CMAKE_CXX_EXTENSIONS OFF)

add_git_submodule("https://github.com/nlohmann/json" external/json)

# add demos
# add_subdirectory(demos/1-hello-world)
# add_subdirectory(demos/2-project-structure)
# add_subdirectory(demos/3-variables-options)
# add_subdirectory(demos/4-config-files)
