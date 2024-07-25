add_library(my_lib STATIC src/my_lib.cpp)

target_include_directories(my_lib 
    PUBLIC inc/            # clients have a clear boundary of the library using #include "my_lib/headers.h"
    PRIVATE inc/my_lib     # implementation does not care about this sepparation so we can use #include "headers.h"
)