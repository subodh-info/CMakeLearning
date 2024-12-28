cmake_minimum_required(VERSION 3.20)

project(CustomTargets)

file(GLOB_RECURSE SOURCE_FILES person.cpp person.h)

add_executable(CustomTargets main.cpp ${SOURCE_FILES})

add_custom_target(custom_script
    COMMAND 
        ${CMAKE_COMMAND} -E echo Hi this is a custom target
    VERBATIM
    COMMENT "Running custom script....."
)

add_dependencies(CustomTargets custom_script)