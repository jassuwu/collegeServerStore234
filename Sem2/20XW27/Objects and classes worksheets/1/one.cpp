#include <iostream>
#include <string>
#include "one.h"
using namespace std;
Address::Address()
{
    apNum = 0;
    cout<<"Enter houseNum";
    cin>>houseNum;
    cin.get();
    cout<<"Street name : ";
    getline(cin,street);
    cout<<"City : ";
    getline(cin,city);
    cout<<"State : ";
    getline(cin,state);
    cout<<"Enter postal code : ";
    cin>>postalCode;
}
Address::Address(int ano)
{
    cout<<"Enter houseNum";
    cin>>houseNum;
    cin.get();
    cout<<"Street name : ";
    getline(cin,street);
    cout<<"Enter apNum : ";
    cin>>apNum;
    cin.get();
    cout<<"City : ";
    getline(cin,city);
    cout<<"State : ";
    getline(cin,state);
    cout<<"Enter postal code : ";
    cin>>postalCode;

}
void Address::printAddress()
{
    cout<<houseNum<<","<<street<<",\n"<<city<<","<<state<<"-"<<postalCode<<endl;
}
void Address::comes_before(Address a)
{
    if(postalCode < a.postalCode)
        cout<<"Address at "<<postalCode<<" comes first."<<endl;
    else
        cout<<"Address at "<<a.postalCode<<" comes first."<<endl;
}
