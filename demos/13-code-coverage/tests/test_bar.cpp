#include <catch2/catch_test_macros.hpp>
#include "bar/bar.h"


TEST_CASE("Bar", "[coverage]") {
    REQUIRE(bar(2) == 4);
}