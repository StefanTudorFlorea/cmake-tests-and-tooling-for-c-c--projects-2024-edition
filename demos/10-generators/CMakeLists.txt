# target
set(SOURCES src/main.cpp)
add_executable(10-generators ${SOURCES})

# add warnings based on compilers
target_compile_options(10-generators
    PRIVATE
        $<$<CXX_COMPILER_ID:GNU>:-Wall>
        $<$<CXX_COMPILER_ID:MSVC>:/W4>
)