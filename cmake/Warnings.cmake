function(target_enable_warnings TARGET_NAME ENABLE_WARNINGS TREAT_WARNINGS_AS_ERRORS)

    # skip all if warnings are disabled
    if (NOT ${ENABLE_WARNINGS})
        message(STATUS "Warnings disabled for ${TARGET_NAME}")
        return()
    endif()

    # custom warnings for each compiler
    set(GNU_WARNINGS   -Wall -Wextra -Wpedantic)
    set(CLANG_WARNINGS -Wall -Wextra -Wpedantic)
    set(MSVC_WARNINGS  /Wall)

    # treat warnings as errors
    if (${TREAT_WARNINGS_AS_ERRORS})
        set(GNU_WARNINGS   ${GNU_WARNINGS} -Werror)
        set(CLANG_WARNINGS ${CLANG_WARNINGS} -Werror)
        set(MSVC_WARNINGS  ${MSVC_WARNINGS} /WX)
    endif()

    # detect compiler and set warnings
    if (CMAKE_CXX_COMPILER_ID MATCHES "MSVC")
        set(WARNINGS ${MSVC_WARNINGS})
    elseif(CMAKE_CXX_COMPILER_ID MATCHES "GNU")
        set(WARNINGS ${GNU_WARNINGS})
    elseif(CMAKE_CXX_COMPILER_ID MATCHES "CLANG")
        set(WARNINGS ${GNU_WARNINGS})
    endif()

    # set target properties
    target_compile_options(${TARGET_NAME} PRIVATE ${WARNINGS})
    message(STATUS "[custom] Warnings enabled")
endfunction()
