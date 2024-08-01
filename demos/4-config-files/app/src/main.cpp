#include <iostream>
#include <string>
#include "config.h"
#include "my_lib/my_lib.h"

int main() {
    std::string version = "v" + project_version_major + "." +
                          project_version_minor + "." + project_version_patch +
                          "-" + git_hash;
    std::cout << "version: " << version << std::endl;
}