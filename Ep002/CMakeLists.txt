cmake_minimum_required(VERSION 3.19)
project(HelloApp 
        VERSION 0.0.1
        DESCRIPTION "The leading Hello world App"
        )
add_executable(HelloApp main.cpp)
target_compile_features(HelloApp PRIVATE cxx_std_20)