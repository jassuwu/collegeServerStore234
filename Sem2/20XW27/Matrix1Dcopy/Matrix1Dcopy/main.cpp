#include <iostream>
using namespace std;
class Matrix1D
{
    private:
        int n;
    public:
        int *A;
        Matrix1D(int a);
        Matrix1D(int a, int arr[]);
        void printMatrix() const;
        ~Matrix1D();
};
Matrix1D::Matrix1D(int a)
{
    n = a;
    A = new int[a];
    for( int i = 0; i < a; i++)
    {
        A[i] = i;
    }
}
Matrix1D::Matrix1D(int a, int arr[])
{
    n = a;
    A = new int[n];
    for( int i = 0; i < n; i++)
    {
        A[i] = arr[i];
    }
}
void Matrix1D::printMatrix() const
{
    for(int i = 0; i < n; i++)
    {
        cout<<A[i]<<" ";
    }
    cout<<endl;
}
Matrix1D::~Matrix1D()
{
    delete A;
}

int main()
{
    Matrix1D m1(1234);
    m1.printMatrix();
    return 0;
}
