#include <iostream>
#include <cmath>
#include "two.h"
using namespace std;
Account::Account()
{
    balance = 0.0;
}
Account::Account(float ini)
{
    balance = ini;
}
void Account::checkBalance()
{
    cout<<"Balance available in the given account: "<<balance<<endl;
}
void Account::depositMoney(float amt)
{
    balance+=amt;
}
void Account::withdrawMoney(float amt)
{
    if(amt > balance)
    {
        balance -= 5.0;
        cout<<"lol you've been fined 5$, know what's available u dumdum"<<endl;
    }
    else
        balance-=amt;
}
void Account::computeInterest()
{
    cout<<"Interest in a year : "<< balance*pow((1 + (0.06)),12) - balance<<endl;
}
