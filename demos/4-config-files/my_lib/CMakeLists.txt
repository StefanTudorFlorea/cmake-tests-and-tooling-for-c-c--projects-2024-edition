add_library(${LIBRARY_NAME} STATIC src/my_lib.cpp)

target_include_directories(${LIBRARY_NAME} 
    PUBLIC inc/            # clients have a clear boundary of the library using #include "my_lib/headers.h"
    PRIVATE inc/my_lib     # implementation does not care about this sepparation so we can use #include "headers.h"
)