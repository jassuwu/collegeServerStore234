#ifndef MATRIX_H_INCLUDED
#define MATRIX_H_INCLUDED
#include <iostream>
using namespace std;
class Matrix
{
    public:
        int row,col;
        int A[row][col] = new int(100);
        Matrix(int m, int n) : row(m), col(n)
        {
            for(int i = 0; i < row; i++)
            {
                for(int j = 0;j < col; j++)
                {
                    A[i][j] = 0;
                }
            }
        }
        void printMatrix() const
        {
            for(int i = 0; i < row; i++)
            {
                for(int j = 0;j < col; j++)
                {
                    cout<<A[i][j]<<" ";
                }
                cout<<endl;
            }
        }


}

#endif // MATRIX_H_INCLUDED
