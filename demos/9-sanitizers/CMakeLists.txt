# target
set(SOURCES src/main.cpp)
add_executable(9-sanitizers ${SOURCES})

# options for sanitizers
include(Sanitizers)
option(ENABLE_SANITIZERS "Turn on/off all sanitizers" ON)
Santiziers_EnableAllSanitizers(9-sanitizers ${ENABLE_SANITIZERS})