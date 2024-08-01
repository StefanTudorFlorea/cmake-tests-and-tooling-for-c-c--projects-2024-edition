# target
set(SOURCES2 src/main.cpp)
add_executable(11-clang-tidy ${SOURCES2})

include(Linters)
Linters_AddClangTidy(11-clang-tidy)