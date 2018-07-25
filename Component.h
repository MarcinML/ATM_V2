#ifndef COMPONENT_H
#define COMPONENT_H

#include "Message.h"
#include <exception>

class Component
{
public:
    virtual ~Component() = default;

    virtual void handle(const Message& message) = 0;

    void setNext(Component& component)
    {
        if (next != nullptr)
        {
            throw std::exception();
        }
        next = &component;
    }
protected:
    Component * next = nullptr;

};

#endif //COMPONENT_H
