#include <catch2/catch_test_macros.hpp>
#include "foo/foo.h"


TEST_CASE("Foo", "[coverage]") {
    REQUIRE(foo(true) == 42);
    REQUIRE(foo(false) == 0);
}