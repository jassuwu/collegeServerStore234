#include <iostream>
#include <cmath>
#include <string>
#include "point.h"
using namespace std;

int main()
{
    Point p1;
    /*cout<<"\nisOrigin()\n"<<endl;
    if(p1.isOrigin())
    {
        cout<<"The point is an Origin"<<endl;
    }
    else
    {
        cout<<"The point is not an Origin"<<endl;
    }*/

    Point p2(1,1);
    /*cout<<"\nmulByInt()\n"<<endl;
    cout<<"Before : ("<<p2.x<<","<<p2.y<<")"<<endl;
    p2 = p2.mulByInt(2);
    cout<<"After : ("<<p2.x<<","<<p2.y<<")"<<endl;
    cout<<"\ncheckQuadrant() for both points\n"<<endl;
    cout<<"quad:"<<p1.checkQuadrant()<<endl;
    cout<<"quad:"<<p2.checkQuadrant()<<endl;
    cout<<"\nadd()\n"<<endl;
    Point p3 = p1.add(p2);
    cout<<"p3 after add : ("<<p3.x<<","<<p3.y<<")"<<endl;
    cout<<"\nsub()\n"<<endl;
    Point p4 = p1.sub(p2);
    cout<<"p4 after sub : ("<<p4.x<<","<<p4.y<<")"<<endl;
    cout<<"\ndistance()"<<endl;
    cout<<p1.distance(p2)<<endl;
    cout<<"\ntoString()\n"<<endl;
    cout<<toString(p1)<<endl;
    cout<<toString(p2)<<endl;
    cout<<toString(p3)<<endl;
    cout<<toString(p4)<<endl;*/
    cout<<endl<<endl<<endl;
    Point p3 = p1 + p2;
    cout<<"("<<p3.x<<","<<p3.y<<")"<<endl;
    Point p4 = p1.add(p2);
    cout<<"("<<p4.x<<","<<p4.y<<")"<<endl;
    Point p5 = p1 - p2;
    cout<<"("<<p5.x<<","<<p5.y<<")"<<endl;
    Point p6 = p1.sub(p2);
    cout<<"("<<p6.x<<","<<p6.y<<")"<<endl;
    Point p7 = p1*5;
    cout<<"("<<p7.x<<","<<p7.y<<")"<<endl;
    Point p8 = p1.mulByInt(5);
    cout<<"("<<p8.x<<","<<p8.y<<")"<<endl;
    return 0;
}
