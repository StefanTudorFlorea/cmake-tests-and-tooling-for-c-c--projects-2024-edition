# target
set(SOURCES2 src/main.cpp)
add_executable(11-clang-format ${SOURCES2})

include(Style)
Style_AddClangFormat(ON)