#ifndef DOG_H
#define DOG_H

#include <string>
#include <iostream>

class Dog
{
public:
    explicit Dog(std::string name);
    Dog() = default;
    ~Dog();

    std::string getName()
    {
        return dog_name;
    }

    void setName(const std::string &name)
    {
        dog_name = name;
    }

    void printInfo()
    {
        std::cout << "Dog [name: " << dog_name << "]" << std::endl;
    }

private:
    std::string dog_name{"Puffy"};
};
#endif