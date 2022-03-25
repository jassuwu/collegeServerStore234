#ifndef SET_H_INCLUDED
#define SET_H_INCLUDED
class Set
{
  private:
    int *A;
    int m;
  public:
    Set(int size);
    void add(int);
    void remove(int);
    void display();
    //Set operator|(Set b);
    //Set operator&(Set b);
};


#endif // SET_H_INCLUDED
