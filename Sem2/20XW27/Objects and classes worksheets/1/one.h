#ifndef ONE_H_INCLUDED
#define ONE_H_INCLUDED
#include<iostream>
#include<string>
using namespace std;
class Address
{
    int houseNum;
    string street;
    int apNum;
    string city;
    string state;
    int postalCode;
    public:
        Address();
        Address(int ano);
        void printAddress();
        void comes_before(Address a);
};



#endif // ONE_H_INCLUDED
