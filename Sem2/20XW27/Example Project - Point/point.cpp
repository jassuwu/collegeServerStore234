#include "point.h"
#include <iostream>
#include <cmath>
#include <string>
using namespace std;
Point::Point()
{
    this->x=this->y=0;
}
Point::Point(float x, float y)
{
    this->x = x;
    this->y = y;
}
bool Point::isOrigin()
{
    if(this->x == 0 && this->y == 0)
        return true;
    else
        return false;
}
float Point::distance(Point p)
{
    return sqrt(pow(this->x - p.x,2) + pow(this->y - p.y,2));
}
Point Point::mulByInt(int n)
{
    Point pm;
    pm.x = this->x;
    pm.y = this->y;
    pm.x*=n;
    pm.y*=n;
    return pm;
}
Point Point::add(Point p)
{
    Point pa;
    pa.x = this->x + p.x;
    pa.y = this->y + p.y;
    return pa;
}
Point Point::sub(Point p)
{
    Point ps;
    ps.x = this->x - p.x;
    ps.y = this->y - p.y;
    return ps;
}
int Point::checkQuadrant()
{
    if(this->x > 0)
    {
        if(this->y > 0)
        {
            return 1;
        }
        else if(this->y < 0)
        {
            return 4;
        }
    }
    else if(this->x < 0)
    {
        if(this->y > 0)
        {
            return 2;
        }
        else if(this->y < 0)
        {
            return 3;
        }
    }
    else if(this->x == 0 && this->y ==0)
    {
        return 0;
    }
    else if(this->x == 0)
    {
        return 5;
    }
    else if(this->y == 0)
    {
        return 6;
    }
}
Point Point::operator +(Point p)
{
    Point pa;
    pa.x = x + p.x;
    pa.y = y + p.y;
    return pa;
}
Point Point::operator -(Point p)
{
    Point ps;
    ps.x = x - p.x;
    ps.y = y - p.y;
    return ps;
}
Point Point::operator *(int n)
{
    Point pm;
    pm.x = n*x;
    pm.y = n*y;
    return pm;
}



/*string Point::toString()
{
    string pt = "("+to_string(this->x)+","+to_string(this->y)+")";
    return pt;
}*/
