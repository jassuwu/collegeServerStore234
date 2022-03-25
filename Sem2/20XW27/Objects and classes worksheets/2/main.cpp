#include <iostream>
#include "two.h"
#include <cmath>
using namespace std;

int main()
{
    Account a1,a2(10000);
    a1.checkBalance();
    a2.checkBalance();
    a1.depositMoney(100000000);
    a2.withdrawMoney(1000);
    a1.checkBalance();
    a2.checkBalance();
    a1.withdrawMoney(10000000000);
    a1.computeInterest();
    a2.computeInterest();
    return 0;
}
