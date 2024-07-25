# config
set(LIBRARY_NAME    "library")
set(EXECUTABLE_NAME "3-variables-options")

# user options
option(COMPILE_EXECUTABLE "Wheter to compile the executable" OFF)

# targets
add_subdirectory(my_lib)

if (COMPILE_EXECUTABLE)
    message("Compile the executable")
    add_subdirectory(app)
else()
    message("Not compiling the executable")
endif()