#Quoted argument and escape sequences

#Escaping characters
message("The sky is blue: \" \n my friend\n")

#multiline in quoted argument 
message("With greate power....
        comes  greate responsibility")

#variable evaluation
message("The cmake version is ${CMAKE_VERSION}")

#Unquoted arguments. spaces and semicolons act as separators 
message(The\ sky\ is blue) #One argument, the spaces are escaped
message(Two Arguments) #Two arguments: the space acts as separator
message(The;Sky;Is;Blue) #four arguments : The ; acts as a separator