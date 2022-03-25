#ifndef POINT_H_INCLUDED
#define POINT_H_INCLUDED
#include <string>
class Point
{
    public:
        float x,y;
        Point();
        Point(float x,float y);
        bool isOrigin();
        float distance(Point p);
        Point mulByInt(int n);
        Point add(Point p);
        Point sub(Point p);
        int checkQuadrant();
        Point operator +(Point);
        Point operator -(Point);
        Point operator *(int);
        //std::string toString();
};


#endif // POINT_H_INCLUDED
