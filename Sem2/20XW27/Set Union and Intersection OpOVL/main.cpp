#include <iostream>
#include "set.h"
using namespace std;

int main()
{
    Set s1(5);
    s1.display();
    s1.add(6);
    s1.display();
    s1.remove(4);
    s1.display();
    return 0;
}
