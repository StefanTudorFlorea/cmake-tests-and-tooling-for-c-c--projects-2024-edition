#include "my_lib/my_lib.h"
#include "config.h"
#include <iostream>
#include <string>

int main() {
    std::string version = "v" + project_version_major + "." + project_version_minor + "." + project_version_patch + "-" + git_hash;
    std::cout << "version: " << version << std::endl;
}