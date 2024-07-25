# config the files
execute_process(
    COMMAND git rev-parse --short HEAD
    OUTPUT_STRIP_TRAILING_WHITESPACE
    OUTPUT_VARIABLE GIT_HASH)

configure_file(
    "include/config.h.in"
    ${CMAKE_BINARY_DIR}/config/include/config.h
    ESCAPE_QUOTES
)

# the question is how would be responssible for this file
# the library? the app(sounds resonable)? 
target_include_directories(${EXECUTABLE_NAME} PUBLIC ${CMAKE_BINARY_DIR}/config/include/)