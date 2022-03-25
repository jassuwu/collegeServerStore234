#include <iostream>
#include "set.h"
using namespace std;
Set::Set(int size)
{
    m = size;
    A = new int[m];
    for(int i = 0; i <= m; i++)
    {
        A[i] = i+1;
    }
}
void Set::add(int elt)
{
    int f = 0;
    for(int i = 0; i < m; i++)
    {
        if(A[i] == elt)
            f = 1;
    }
    if(f == 0)
    {
        A[m++] = elt;
    }
}
void Set::remove(int elt)
{
    for(int i = 0;i < m; i++)
    {
        if(A[i] == elt)
        {
            for(int j = i; j < m; j++)
            {
                for(int k = j+1; k < m; k++)
                {
                    A[j] = A[k];
                }
            }
        }
        break;
    }
    m--;
}
void Set::display()
{
    cout<<"{";
    for(int i = 0; i < m; i++)
    {
        cout<<A[i]<<",";
    }
    cout<<"}"<<endl;
}

