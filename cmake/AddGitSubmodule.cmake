
function(add_git_submodule git dest)
    message("Going to work...")

    # clone the submodule
    find_package(Git REQUIRED)

    # add submodule if not already there
    if (NOT EXISTS ${CMAKE_SOURCE_DIR}/${dest})
        execute_process(
            COMMAND ${GIT_EXECUTABLE} submodule add ${git} ${CMAKE_SOURCE_DIR}/${dest}
            WORKING_DIRECTORY ${CMAKE_SOURCE_DIR})
    endif()

    # make sure we can include it in our cmake
    if (NOT EXISTS ${CMAKE_SOURCE_DIR}/${dest}/CMakeLists.txt)
        message("Submodule does not have a CMakeLists.txt")
        return()
    endif()

    add_subdirectory(${CMAKE_SOURCE_DIR}/${dest} ${CMAKE_SOURCE_DIR}/build/${dest})

endfunction()