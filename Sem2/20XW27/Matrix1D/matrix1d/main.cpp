#include <iostream>
using namespace std;
class Matrix1D
{
    public:
        int A[3];
        Matrix1D();
        Matrix1D(int arr[]);
        void printMatrix() const;
};
Matrix1D::Matrix1D()
{
    for(int i = 0; i < 3; i++)
    {
        A[i] = 0;
    }
}
Matrix1D::Matrix1D(int arr[])
{
    for(int i = 0; i < 3; i++)
    {
        A[i] = arr[i];
    }
}
void Matrix1D::printMatrix() const
{
    for(int i = 0; i < 3; i++)
    {
        cout<<A[i]<<" ";
    }
    cout<<endl;
}

int main()
{
    Matrix1D m1;
    m1.printMatrix();
    int a[3] = {1,2,3};
    Matrix1D m2(a);
    m2.printMatrix();

    return 0;
}
