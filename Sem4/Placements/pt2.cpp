// 20PW14


#include <iostream>
#include <stdlib.h>
#include <fstream>
#include <string>
#include <algorithm>
#include <vector>
using namespace std;




int main()
{
    ifstream iFile;
    string temp;
    vector<string> listOfWords;

    iFile.open("CP.txt");
    int i = 0;

    while(!iFile.eof())
    {
        iFile >> temp;
        listOfWords.push_back(temp);
    }
    sort(listOfWords.begin(),listOfWords.end());
    /*
    ofstream oFile;
    oFile.open("lexiSorted.txt");
    for(int j = 0; j < listOfWords.size(); j++)
    {
        oFile << listOfWords[j] << endl;
    }
    cout<<"Done!"<<endl;
    oFile.close();*/
    iFile.close();
    /*
    vector<string> uniqueWords;
    for(int j = 0; j < listOfWords.size(); j++)
    {
        int flag = 1;
        for(int k = 0; k < uniqueWords.size(); k++)
        {
            if(uniqueWords[k] == listOfWords[j])
            {
                flag = 0;
            }
        }
        if(flag == 1)
        {
            uniqueWords.push_back(listOfWords[j]);
        }
    }*/


    // To find out the occurance of each word in the text file.
    string firstWord = listOfWords[0];
    int occCount = 0;
    for(int j = 0; j < listOfWords.size(); j++)
    {
        if(firstWord == listOfWords[j])
        {
            occCount++;
        }
        else
        {
            cout<< firstWord << " - " << occCount <<endl;
            firstWord = listOfWords[j];
            occCount = 1;
        }
    }

    // To find out the max and min occurances
    firstWord = listOfWords[0];
    occCount = 0;
    int maxCount = 0;
    int minCount = 9999999;
    string maxOcc = firstWord;
    string minOcc = firstWord;
    for(int j = 0; j < listOfWords.size(); j++)
    {
        if(firstWord == listOfWords[j])
        {
            occCount++;
        }
        else
        {
            if (maxCount < occCount)
            {
                maxCount = occCount;
                maxOcc = listOfWords[j-1];
            }
            if (minCount > occCount)
            {
                minCount = occCount;
                minOcc = listOfWords[j-1];
            }
            firstWord = listOfWords[j];
            occCount = 1;
        }
    }
    cout << maxOcc << " is the max occured string and "<< minOcc << " is the min occured string." << endl;


    //To find out if program has a substring or not.
    string givenString = "the";
    vector<string>::iterator it;

    it = find(listOfWords.begin(), listOfWords.end(), givenString);
    if (it != listOfWords.end())
    {
        cout<< "Found the givenString >> " << givenString << " << ." <<endl;
    }
    else{
        cout<< "Not Found."<<endl;
    }
    return 0;
}
