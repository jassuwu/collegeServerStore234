#include "meal.h"
#include <iostream>
using namespace std;
Meal::Meal()
{
    calorie = 0;
    entree = "bruh nothin";
}
Meal::Meal(int cal,string name)
{
    calorie = cal;
    entree = name;
}
void Meal::printMeal()
{
    cout<<"Entrée :"<<entree<<endl;
    cout<<"Calorie :"<<calorie<<endl;
}
ostream& operator<<(ostream &out, const Meal &m)
{
    out<<"Entrée :"<<m.entree<<endl;
    out<<"Calorie :"<<m.calorie<<endl;
    return out;
}
istream& operator>>(istream &in, Meal &m)
{
    cout<<"Enter Entree :";
    in>>m.entree;
    cout<<"Enter cals :";
    in>>m.calorie;
    return in;
}
Meal Meal ::operator+(Meal m)
{
    Meal ma;
    ma.entree = "Daily Total";
    ma.calorie = calorie + m.calorie;
    return ma;
}
