function(Santiziers_EnableAllSanitizers targetName enableSanitizers)

    # if disabled => early exit
    if (NOT ${enableSanitizers})
        message(STATUS "Sanitizers disabled for target: ${targetName}")
        return()
    endif()

    # only for debug builds, since it makes the binary slower => early exit
    if(NOT CMAKE_BUILD_TYPE STREQUAL "Debug")
        message(WARNING "Sanitizers automatically disabled since this is not a Debug build")
        return()
    endif()

    # out of bounds, use after free
    target_compile_options(${targetName} PRIVATE -fsanitize=address)
    target_link_options(${targetName} PRIVATE -fsanitize=address)

    # leak
    target_compile_options(${targetName} PRIVATE -fsanitize=leak)
    target_link_options(${targetName} PRIVATE -fsanitize=leak)

    # bool
    target_compile_options(${targetName} PRIVATE -fsanitize=undefined -fsanitize=bool)
    target_link_options(${targetName} PRIVATE -fsanitize=undefined -fsanitize=bool)
    
endfunction()
