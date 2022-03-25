#ifndef TWO_H_INCLUDED
#define TWO_H_INCLUDED
class Account
{
    private:
        float balance;
    public:
        Account();
        Account(float ini);
        void depositMoney(float amt);
        void withdrawMoney(float amt);
        void checkBalance();
        void computeInterest();
};

#endif // TWO_H_INCLUDED
