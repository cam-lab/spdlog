#!/bin/bash

#cmake -H. -B_builds -DCMAKE_BUILD_TYPE=Release -DSPDLOG_FMT_EXTERNAL=ON -Dfmt_DIR=../../fmt/lib/cmake/fmt
cmake -H. -B_builds -DCMAKE_BUILD_TYPE=Release
cmake --build _builds --config Release
cmake -H. -B_builds -DCMAKE_INSTALL_PREFIX=.. -DCMAKE_BUILD_TYPE=Release
cmake --build _builds --target install
