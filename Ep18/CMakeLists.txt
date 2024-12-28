cmake_minimum_required(VERSION 3.20)

project(Rooster)

set(OUR_PROJECT_VERSION "One")

#set up a cache variable named THE_SKY_IS_BLUE
set(THE_SKY_IS_BLUE "Yes" CACHE STRING "Is the sky blue?")

#The math library
add_subdirectory(src/math)

#The stats library
add_subdirectory(src/stats)

#set the source files
set(SOURCE_FILES 
        src/main.cpp
        src/information.cpp
        src/information.h
)

function(create_and_link_executable EXE_NAME LIB_NAME SOURCES)
    add_executable(${EXE_NAME} ${${SOURCES}})
    target_link_libraries(${EXE_NAME} PUBLIC ${LIB_NAME})
endfunction()

#the executable target
#add_executable(rooster ${SOURCE_FILES})
#target_link_libraries(rooster PUBLIC libraries)

create_and_link_executable(rooster libstats SOURCE_FILES)

message("Our project version is ${OUR_PROJECT_VERSION}")
message("Custome message: The compiler we're using is ${CMAKE_CXX_COMPILER}")
message("The processor architecture is $ENV{PROCESSOR_ARCHITECTURE}")
message(${THE_SKY_IS_BLUE})