function(Style_AddClangFormat ENABLED)

    # must be enabled
    if (NOT ${ENABLED})
        message("Not formatting the code")
    endif()

    # must have clang-format
    find_program(CLANG_FORMAT clang-format)
    if (NOT CLANG_FORMAT)
        message(FATAL_ERROR "Cannot style the code. clang-format not found")
    endif()

    # scan all possible files
    file(GLOB_RECURSE CPP_FILES ${CMAKE_SOURCE_DIR}/demos/*.cpp ${CMAKE_SOURCE_DIR}/demos/*h)

    add_custom_target(run_clang_format
        COMMAND ${CLANG_FORMAT} ${CPP_FILES} -i=1
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    )
    
endfunction()
