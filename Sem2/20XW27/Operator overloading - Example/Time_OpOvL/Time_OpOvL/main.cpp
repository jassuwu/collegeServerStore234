#include <iostream>
#include "time.h"
using namespace std;
int main()
{
	Time t1(1,1,1);
	Time t2(2,2,2);
	t1.printTime();
	t2.printTime();
	Time t3 = t1 + t2;
	t3.printTime();
	cout<<t1<t2<<end;
	return 0;
}