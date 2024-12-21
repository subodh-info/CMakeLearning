cmake_minimum_required(VERSION 3.20)

project(Rooster)

#include math.cmake
include(src/math/math.cmake)

#include stats.cmake file
include (src/stats/stats.cmake)

add_executable(rooster src/main.cpp)
target_link_libraries(rooster PUBLIC libstats)


