#include <iostream>
#include "time.h"
using namespace std;
int main()
{
	Time t1(1,1,1);
	Time t2(23,0,0);
	t1.printTime();
	t2.printTime();
	Time t3 = t1 + t2;
	t3.printTime();
	if(t1<t2)
	{
	    t1.printTime();
	    cout<<" is less than ";
	    t2.printTime();
	    cout<<endl;
	}
	else
	{
	    t1.printTime();
	    cout<<" is greater than ";
	    t2.printTime();
	    cout<<endl;
	}
	return 0;
}
