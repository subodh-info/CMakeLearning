# A function that increment a variable
function(IncrementVariable var)
    math(EXPR ${var} "${${var}} + 1")
    set(${var} ${${var}} PARENT_SCOPE)
endfunction()

# define a variable
set(MyVariable 0)

# call the function to increment the variable
IncrementVariable(MyVariable)

# print the value of the variable
message("MyVariable: ${MyVariable}") # 1

# again call the function for variable increment
IncrementVariable(MyVariable)

#print the value of variable
message("MyVariable: ${MyVariable}") # 2

# a loop that call the Increment function
foreach(loop_var RANGE 10)
    message("loop_var: ${loop_var}")
    IncrementVariable(MyVariable)
endforeach()

message("MyVariable: ${MyVariable}")
