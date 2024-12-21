cmake_minimum_required(VERSION 3.20)

project(Rooster)

#the math library
add_library(libmath STATIC src/math/src/supermath.cpp)
target_include_directories(libmath PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/src/math/inc)

#the stats library
add_library(libstats STATIC src/stats/src/stats.cpp)
target_include_directories(libstats PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/src/stats/inc)
target_link_libraries(libstats PRIVATE libmath) #libmath libary are linking with stats libary

add_executable(rooster src/main.cpp)
target_link_libraries(rooster PUBLIC libstats)


