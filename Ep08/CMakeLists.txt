cmake_minimum_required(VERSION 3.20)

project(Rooster)

#the math library
add_library(libmath STATIC src/supermath.cpp)
#target_include_directories(libmath PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/src/) -> this line no need to write because header file is in the same directory (in cpp file)

#the stats library
add_library(libstats STATIC src/stats.cpp)
#target_include_directories(libstats PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/src)
target_link_libraries(libstats PRIVATE libmath) #libmath libary are linking with stats libary

add_executable(rooster src/main.cpp)
target_link_libraries(rooster PUBLIC libstats)


