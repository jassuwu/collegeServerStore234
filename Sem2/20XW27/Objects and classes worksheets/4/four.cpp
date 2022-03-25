#include <iostream>
#include "four.h"
using namespace std;
int Country::count = 0;
Country::Country(float a, int p)
{
    area = a;
    pop = p;
    count++;
}
void Country::lArea(Country arr[])
{
    int len = sizeof(arr)/sizeof(arr[0]);
    for(int i = 0; i < len; i++)
    {
        if(arr[i].area > area)
        {
            area = arr[i].area;
            pop = arr[i].pop;
        }
    }
}
void Country::lPop(Country arr[])
{
    int len = sizeof(arr)/sizeof(arr[0]);
    for(int i = 0; i < len; i++)
    {
        if(arr[i].pop > pop)
        {
            area = arr[i].area;
            pop = arr[i].pop;
        }
    }
}
void Country::lPopDens(Country arr[])
{
    int len = sizeof(arr)/sizeof(arr[0]);
    for(int i = 0; i < len; i++)
    {
        if(arr[i].pop/arr[i].area > pop/area)
        {
            area = arr[i].area;
            pop = arr[i].pop;
        }
    }
}
void Country::printCountry()
{
    cout<<"Country Area:"<<area<<endl;
    cout<<"Country Pop:"<<pop<<endl;
}
