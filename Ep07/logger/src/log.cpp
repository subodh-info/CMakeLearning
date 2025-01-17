#include "log.h"
#include <iostream>

void log_data(const char *message, LogType it)
{
    switch (it)
    {
    case LogType::MESSAGE:
        std::cout << "Message: " << message << std::endl;
        break;
    case LogType::WARNING:
        std::cout << "Warning: " << message << std::endl;
        break;
    case LogType::FATAL_ERROR:
        std::cout << "Fatal Error: " << message << std::endl;
        break;
    default:
        break;
    }
}
