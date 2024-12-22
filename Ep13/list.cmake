set(STUDENT1 Steve Morion Dave) # A list of 3 student
set(STUDENT2 Curly;Boe;Victor;John) #A list of 4 student
set(STUDENT3 "Mary Lily Domz") #only one string
message(${STUDENT1})
message(${STUDENT2})
message(${STUDENT3})

list(LENGTH STUDENT1 STUDENT1_LENGTH)
message("Student1 has ${STUDENT1_LENGTH} elements")

list(LENGTH STUDENT2 STUDENT2_LENGTH)
message("Student2 has ${STUDENT2_LENGTH} elements")

list(LENGTH STUDENT3 STUDENT3_LENGTH)
message("Studet3 has ${STUDENT3_LENGTH} elements")

list(APPEND STUDENT2 "Kurk")
list(LENGTH STUDENT2 STUDENT2_LENGTH)
message("STUDENT2 has ${STUDENT2_LENGTH} elements")

list(GET STUDENT2 2 THE_LEADER)
message("The leader is ${THE_LEADER}")



#option command
option(OPTIMIZE "Do we want to optimize the operation?" ON) #default value is OFF
message("Are we optimizing? ${OPTIMIZE}")

if(OPTIMIZE)
    message("We are optimizing.")
endif()
