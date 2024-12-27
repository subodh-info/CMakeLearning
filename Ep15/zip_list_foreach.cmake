set(L1 "One;two;three;four;five")
set(L2 "1;2;3;4;5")

#print value from both list using ZIP_LISTS
foreach(num IN ZIP_LISTS L1 L2)
    message("word=${num_0}, num=${num_1}")
endforeach()
# Here, CMake will create a num_<N> varaible for each list provided,
# which it will fill with items from each list.

# You can pass multiple variable names (one for every list)
# each list will use a separate variable to store its items
message("\n====================================================\n")
foreach(word num IN ZIP_LISTS L1 L2)
    message("word=${word}, num=${num}")
endforeach()
