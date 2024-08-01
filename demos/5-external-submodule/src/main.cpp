#include <iostream>
#include <nlohmann/json.hpp>

int main() {
    std::cout << "json: " << nlohmann::json::parse(R"({name: "stefan"})");
}