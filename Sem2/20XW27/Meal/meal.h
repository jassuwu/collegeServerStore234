#ifndef MEAL_H_INCLUDED
#define MEAL_H_INCLUDED
#include <string>
using namespace std;
class Meal
{
    public:
    string entree;
    int calorie;
    Meal();
    Meal(int,string);
    void printMeal();
    friend ostream& operator<<(ostream &out, const Meal &m);
    friend istream& operator>>(istream &in, Meal &m);
    Meal operator+(Meal m);

};


#endif // MEAL_H_INCLUDED
