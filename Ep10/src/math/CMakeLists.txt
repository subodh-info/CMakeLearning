#the math library
add_library(libmath STATIC src/supermath.cpp)
target_include_directories(libmath PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/inc)