#include <iostream>
#include "person.h"

int main()
{
    Person p("John", 42);
    std::cout << "Name: " << p.getName() << std::endl
              << "Age: " << p.getAge() << std::endl;
    return EXIT_SUCCESS;
}