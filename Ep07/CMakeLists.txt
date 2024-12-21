cmake_minimum_required(VERSION 3.19)
project(HelloApp 
        VERSION 1.0.0
        DESCRIPTION "The leading Hello world App"
        LANGUAGES CXX
        )

add_library(operations STATIC src/operations.cpp)
target_include_directories(operations PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_compile_features(operations PUBLIC cxx_std_20)

add_library(logger STATIC logger/src/log.cpp)
target_include_directories(logger PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/logger/include)

add_executable(HelloApp main.cpp src/dog.cpp)
target_include_directories(HelloApp PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include)
target_compile_features(HelloApp PUBLIC cxx_std_20)

target_link_libraries(HelloApp PUBLIC operations logger)