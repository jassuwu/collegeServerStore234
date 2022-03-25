#ifndef TIME_H_INCLUDED
#define TIME_H_INCLUDED
class Time
{
private:
	int hours,minutes,seconds;
public:
	Time(int h,int m,int s);
	void printTime();
	Time operator +(Time);
	Time operator <(Time);
}

#endif