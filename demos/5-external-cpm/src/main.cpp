#include <fmt/core.h>
#include <cxxopts.hpp>

int main(int argc, char* argv[]) {
    fmt::println("hello world");
    cxxopts::Options opts{"Awesome program", "testing out dependencies"};
    auto result = opts.parse(argc, argv);
}