#include <iostream>
#include "three.h"
using namespace std;
Car::Car(float eff)
{
    fuel  = 0;
    fuelEff = eff;
}
void Car::add_Gas(float af)
{
    fuel+=af;
    cout<<"Added "<<af<<" litres of fuel."<<endl;
}
void Car::drive(float km)
{
    fuel = fuel - km/fuelEff;
    cout<<"Drove "<<km<<" kilometres."<<endl;
}
float Car::get_gas()
{
    return fuel;
}
