#ifndef FOUR_H_INCLUDED
#define FOUR_H_INCLUDED
class Country
{
    private:
        static int count;
        int pop;
        float area;
    public:
        Country(float a, int p);
        void lArea(Country arr[]);
        void lPop(Country arr[]);
        void lPopDens(Country []);
        void printCountry();
};


#endif // FOUR_H_INCLUDED
