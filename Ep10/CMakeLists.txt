cmake_minimum_required(VERSION 3.20)

project(Rooster)

#add math library
add_subdirectory(src/math)

#add stats library
add_subdirectory(src/stats)

add_executable(rooster src/main.cpp)
target_link_libraries(rooster PUBLIC libstats)