macro(MyMacro myVar)
    set(myVar "new value")
    message("argument: ${myVar}")
endmacro()

set(myVar "first value")
message("myVar is now: ${myVar}")
MyMacro("called value")
message("myVar is now ${myVar}")

#output
# myVar is now: first value
# argument: called value
# myVar is now new value

#what happen? Despite explicitly setting myVar to new value,
#it didn't affect the output for message("argument: ${myVar}")!
#This is because arguments passed to macros aren't treated as real 
#variables but rather, as constant find-and-replace instructions.