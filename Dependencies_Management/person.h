#ifndef PERSON_H
#define PERSON_H

#include <iostream>
class Person
{
private:
    std::string name;
    int age;

public:
    Person(const std::string &name, int age);
    std::string getName() const;
    int getAge() const;

    void setName(const std::string &newName);
    void setAge(int newAge);
};

#endif