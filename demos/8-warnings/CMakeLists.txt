# target
set(SOURCES src/main.cpp)
add_executable(8-warnings ${SOURCES})

# enable/disable warnings
option(ENABLE_WARNINGS "Enable/Disable warnings" ON)
option(TREAT_WARNINGS_AS_ERRORS "On warning, stop" ON)

include(Warnings)
target_enable_warnings(8-warnings ${ENABLE_WARNINGS} ${TREAT_WARNINGS_AS_ERRORS})