#include "time.h"
#include <iostream>
#include 
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
void Time::operator+(Time t)
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
bool Time::operator<(Time t)
{
	if(hours == t.hours)
	{
		if(minutes == t.minutes)
		{
			if(seconds == t.seconds)
			{
				cout<<"The Time's equal."<<endl;
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
			return 1;
		}
		else
		{
			return 0;
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