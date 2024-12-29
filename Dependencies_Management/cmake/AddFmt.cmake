# add FetchContent module
include (FetchContent)

# configure the FetchContent module
FetchContent_Declare(
    fmt
    GIT_REPOSITORY https://github.com/fmtlib/fmt.git
    GIT_TAG 11.1.1
)

#make available the module
FetchContent_MakeAvailable(fmt)
