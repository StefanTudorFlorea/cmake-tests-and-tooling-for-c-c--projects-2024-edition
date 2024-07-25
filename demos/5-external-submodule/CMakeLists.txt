# confi paths
include(AddGitSubmodule)

# add 3rd-party as manual submodule
add_git_submodule("https://github.com/nlohmann/json" external/json)

# link against json
add_executable(5-external-submodule src/main.cpp)
target_link_libraries(5-external-submodule PUBLIC nlohmann_json::nlohmann_json)