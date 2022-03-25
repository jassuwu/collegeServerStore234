#include <iostream>

using namespace std;

class A
{
public:
int i;
A()
                {
                    i=10;
                }
A(int j=3)
                {i = j;}

};

int main()
{
    A a();
    cout<<a.i;
    return 0;

}
