set(var_1 "Text1")
set([[var2]] "Text2")
set("var3" "Text3")
message(${var_1})
message(${var2})
message(${var3})

#------------------------------------------------------
#variable reference
set(one abc)
set(two ${one}de)
set(three ${two} fg)
set(four thre)
set(five ${${four}e})
message(${one}) #abc
message(${two}) #abcde
message(${three}) #abcdefg
message(${four}) #thre
message(${five}) #abcdefg
#-------------------------------------------------------

#---------------------------------------------------------------------
#Environment variable

#Your own environment variable will affect the running cmake instance
#They won't affect the system
set(ENV{MY_PATH} "C:/Program Files/parent/child/bin")
message($ENV{MY_PATH})

#You can also read environment variable from the system
message($ENV{TMP})
message($ENV{PROCESSOR_ARCHITECTURE})
#-----------------------------------------------------------------------



#--------------------Cache Variable----------------------------------
set(cache_var "The value" CACHE STRING "This is a cache variable")
message(${cache_var})
#---------------------------------------------------------------------


#------------------Pre-defined variable-------------------------------
message(${CMAKE_VERSION})

# print the location of the cmake executable 
message(${CMAKE_COMMAND})

#print the locatino of the current list file
message(${CMAKE_CURRENT_LIST_FILE})
#---------------------------------------------------------------------
