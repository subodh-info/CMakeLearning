function(MyFunction FirstArg)
    message("function: ${CMAKE_CURRENT_FUNCTION}")
    message("function: ${CMAKE_CURRENT_FUNCTION_LIST_FILE}")
    
    set(FirstArg "new value")
    message("FirstArg again: ${FirstArg}")
    message("ARGV0: ${ARGV0} ARGV1: ${ARGV1} ARGC: ${ARGC}")
endfunction()

set(FirstArg "first value")
MyFunction("value1" "value2")
message("FirstArg in global scope: ${FirstArg}")

#output
# function: MyFunction
# function: C:/Subodh/Learning/CMakeLearning/Ep16/function.cmake
# FirstArg again: new value
# ARGV0: value1 ARGV1: value2 ARGC: 2
# FirstArg in global scope: first value

# As you can see, the general syntax and concept of the functions are
# very similar to macros but less susceptible to implicit errors.


function(ModifyGlobalVariables var1 var2)
    set(${var1} "new value for var1 from function" PARENT_SCOPE)
    set(${var2} "new value for var2 from function" PARENT_SCOPE)
endfunction()

#define the global variable
set(GLOBAL_VAR1 "Original value for var1")
set(GLOBAL_VAR2 "Original value for var2")

message("Before function call....")
message("Global_var1: ${GLOBAL_VAR1}")
message("Global_var2: ${GLOBAL_VAR2}")

#call the function to modify the global variables
ModifyGlobalVariables(GLOBAL_VAR1 GLOBAL_VAR2)

message("After function call: ")
message("GLOBAL_VAR1: ${GLOBAL_VAR1}")
message("GLOBAL_VAR2: ${GLOBAL_VAR2}")

#output
# Before function call....
# Global_var1: Original value for var1
# Global_var2: Original value for var2
# After function call: 
# GLOBAL_VAR1: new value for var1 from function
# GLOBAL_VAR2: new value for var2 from function

# if we remove 'PARENT_SCOPE' keyword then var1 and var2
# behaves like local variable for function. 

