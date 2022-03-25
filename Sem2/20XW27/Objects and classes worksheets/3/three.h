#ifndef THREE_H_INCLUDED
#define THREE_H_INCLUDED
class Car
{
    private:
        float fuel;
        float fuelEff;
    public:
        Car(float eff);
        void add_Gas(float af);
        void drive(float km);
        float get_gas();
};


#endif // THREE_H_INCLUDED
