#include <iostream>
#include "four.h"
using namespace std;

int main()
{
    Country c1(100,1000),c2(10,101);
    Country ar[] = {c1,c2};
    Country c3(0,0),c4(0,0),c5(0,0);
    c3.lArea(ar);
    c4.lPop(ar);
    c5.lPopDens(ar);
    c3.printCountry();
    c4.printCountry();
    c5.printCountry();

    return 0;
}
