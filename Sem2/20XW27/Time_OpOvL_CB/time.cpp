#include "time.h"
#include <iostream>
using namespace std;
Time::Time(int h,int m,int s)
{
	hours = h;
	minutes = m;
	seconds = s;
}
void Time::printTime()
{
	cout<<"Time is "<<hours<<":"<<minutes<<":"<<seconds<<endl;
}
Time Time::operator+(Time t)
{
	Time ta(0,0,0);
	ta.seconds = t.seconds + seconds;
	if(ta.seconds > 59)
	{
		ta.seconds -= 60;
		ta.minutes++;
	}
	ta.minutes = t.minutes + minutes;
	if(ta.minutes > 59)
	{
		ta.minutes -=60;
		ta.hours++;
	}
	ta.hours = t.hours + hours;
	if(ta.hours > 23)
	{
		ta.hours -=24;
	}
	return ta;
}
bool Time::operator <(Time t)
{
	if(hours == t.hours)
	{
		if(minutes == t.minutes)
		{
			if(seconds == t.seconds)
			{
				return false;
			}
			else if(seconds < t.seconds)
			{
				return true;
			}
			else
			{
				return false;
			}
		}
		else if(minutes < t.minutes)
		{
			return true;
		}
		else
		{
            return false;
		}
	}
	else if(hours < t.hours)
	{
		return 1;
	}
	else
	{
		return 0;
	}
}
