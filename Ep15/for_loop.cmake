set(names "Alice" "Bob" "Charlie" "Hansika" "Jennifer" "Jesica")

foreach(name ${names})
    message("name: ${name}")
endforeach()

#iterate from list and list of item values
set(myList 1 2 3 4 5)
foreach(VAR IN LISTS myList ITEMS e f)
    message(${VAR}) # output => 1 2 3 4 5 e f
endforeach()

# or we can use short version
foreach(VAR 11 21 31 41 51 g h)
    message(${VAR})
endforeach()
