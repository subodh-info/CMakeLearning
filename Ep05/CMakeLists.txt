cmake_minimum_required(VERSION 3.19)
project(HelloApp 
        VERSION 0.0.1
        DESCRIPTION "The leading Hello world App"
        )
#add_executable(HelloApp main.cpp dog.cpp operations.cpp)

file(GLOB_RECURSE SOURCE_FILES src/*.cpp)
add_executable(HelloApp main.cpp ${SOURCE_FILES})



target_compile_features(HelloApp PRIVATE cxx_std_20)
target_include_directories(HelloApp PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/include)