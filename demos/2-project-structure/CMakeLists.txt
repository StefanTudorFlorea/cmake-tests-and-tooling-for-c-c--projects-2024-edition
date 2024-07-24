add_library(my_lib STATIC src/my_lib.cpp)
target_include_directories(my_lib PUBLIC src/)
add_executable(2-project-structure app/main.cpp)

target_link_libraries(2-project-structure PUBLIC my_lib)