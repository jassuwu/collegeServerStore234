#include <iostream>
#include "three.h"
using namespace std;

int main()
{
    Car c1(10);
    c1.add_Gas(100);
    cout<<"Fuel left: "<<c1.get_gas()<<endl;
    c1.drive(1000);
    cout<<"Fuel left: "<<c1.get_gas()<<endl;
    return 0;
}
