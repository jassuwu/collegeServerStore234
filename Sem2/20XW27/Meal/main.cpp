#include <iostream>
#include "meal.h"
using namespace std;

int main()
{
    Meal breakfast(200,"Sandwich");
    Meal lunch(500,"BigMac");
    Meal supper(300,"Chappati");
    Meal total = breakfast + lunch + supper;
    cout<<breakfast<<endl;
    cout<<lunch<<endl;
    cout<<supper<<endl;
    cout<<total<<endl;
    return 0;
}
