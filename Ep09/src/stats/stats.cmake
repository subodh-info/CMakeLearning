#the stats library
add_library(libstats STATIC src/stats/src/stats.cpp)
target_include_directories(libstats PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/src/stats/inc)
target_link_libraries(libstats PRIVATE libmath) #libmath libary are linking with stats libary
