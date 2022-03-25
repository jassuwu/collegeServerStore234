#include <iostream>
#include <string>
#include "one.h"
using namespace std;

int main()
{
    Address a1,a2(69);
    cout<<"Address of a1 :"<<endl;
    a1.printAddress();
    cout<<"Address of a2 :"<<endl;
    a2.printAddress();
    a1.comes_before(a2);
}
