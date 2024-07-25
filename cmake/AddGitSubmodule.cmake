function(add_git_submodule git dest)
    message("Going to work...")
    find_package(Git REQUIRED)

    execute_process(
        COMMAND ${GIT_EXECUTABLE} submodule add ${PROJECT_SOURCE_DIR}/${dest}
        WORKING_DIRECTORY ${PROJECT_SOURCE_DIR}
    )

    if (NOT EXISTS ${dir}/CMakeLists.txt)
        message("Submodule does not have a CMakeLists.txt")
        return()
    endif()

    add_subdirectory(${dir})

endfunction()