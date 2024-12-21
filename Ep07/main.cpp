#include <iostream>
#include "dog.h"
#include "operations.h"
#include <iostream>
#include <log.h>

int main()
{
    double result = add(20, 70);
    std::cout << "result : " << result << std::endl;

    Dog dog1("Flitzy");
    dog1.printInfo();

    log_data("Hello there", LogType::FATAL_ERROR);
    return 0;
}