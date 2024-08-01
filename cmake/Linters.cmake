function(Linters_AddClangTidy TARGET)

    # required tools
    find_program(clangTidy clang-tidy)
    find_program(runClangTidy run-clang-tidy)
    if (NOT clangTidy OR NOT runClangTidy)
        message(FATAL_ERROR "Tools required for linting not found")
    endif()

    # clang needs files database to correctly parse them
    set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

    # extract files to check
    get_target_property(TARGET_SOURCES ${TARGET} SOURCES)

    # run clang tidy
    add_custom_target(${TARGET}_tidy
        COMMAND ${runClangTidy}
            ${TARGET_SOURCES}
            -config-file=${CMAKE_SOURCE_DIR}/.clang-tidy
            -header-filter=${CMAKE_CURRENT_SOURCE_DIR}
            -p=${CMAKE_BINARY_DIR}
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} 
)
endfunction(Linters_AddClangTidy TARGET)
