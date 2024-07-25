# config
set(LIBRARY_NAME    "library3")
set(EXECUTABLE_NAME "5-external")

# external dependencies
set(CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake/)
include(AddGitSubmodule)

add_git_submodule("https://github.com/StefanTudorFlorea/bika" external/bika)
message(${CMAKE_SOURCE_DIR})
# targets
add_subdirectory(my_lib)
add_subdirectory(app)
add_subdirectory(config)
