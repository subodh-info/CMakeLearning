set(names "Alice" "Bob" "Charlie" "David" "Eve")

#Get the count of names
list(LENGTH names num_names)

#initialize counter variable
set(counter 0)

#create a while loop to iterate through the list of names
while(counter LESS num_names)
    list(GET names ${counter} name) # get the counterth name from the names list and stored into 'name' variable

    #print the name
    message("Name : ${name}")

    # Increment the counter
    math(EXPR counter "${counter} + 1")
endwhile()