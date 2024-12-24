set(VAR1 TRUE)
if(VAR1)
    message("VAR1 is true")
else()
    message("VAR1 is false")
endif()


#undefined variable is treated as false
if(VAR2)
    message("VAR2 is true")
else()
    message("VAR2 is false")
endif()

#variable defined with false value that why it is treated as false
set(VAR3 FALSE)
if(VAR3)
    message("VAR3 is true")
else()
    message("VAR3 is false")
endif()

#variable is defined with some value without speifying FALSE is treated as true
set(VAR4 "The sky is blue")
if(VAR4)
    message("VAR4 is true")
else()
    message("VAR4 is not true")
endif()

set(VAR5 OFF)
if(VAR5)
    message("VAR5 is ON")
else()
    message("VAR5 is OFF")
endif()


set(var1 OFF)
set(var2 "var1")
if(${var2})
    message("var2 is true")
else()
    message("var2 is false")
endif()

if(var2)
    message("var2 is true")
else()
    message("var2 is false")
endif()

if(2 EQUAL 1)
    message("2 equal 1")
else()
    message("2 not equal 1")
endif()

set(DOG 13)
set(PIG 12)
if(PIG LESS DOG)
    message("PIS LESS THAN DOG")
else()
    mesage("PIG NOT LESS THAN DOG")
endif()

set(COW "cow")
set(DOG "dog")
if(COW STRLESS_EQUAL DOG)
    message("COW less than or equal to dog")
else()
    message("DOG less than or equal to cow")
endif()