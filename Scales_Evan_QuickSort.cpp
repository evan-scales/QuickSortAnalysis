// Written by Evan Scales

// import important libraries
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include<float.h>

#include <chrono>
using namespace std::chrono;


using namespace std;
using std::ofstream;

// function prototypes
string readFile(string fileName);
vector<float> stringToArray(string lineArray);
void quickSort(vector<float> &array, int left, int right);
int partition(vector<float> &array, int left, int right);
void swap(float &a, float &b);


int main(int argc, char const *argv[])
{
    // Get the file name from the command line
    string inputFile = argv[1];
    string outputFile = argv[2];

    if (inputFile == "" || outputFile == "")
    {
        cout << "Please enter a file name" << endl;
        return 0;
    }

    string strArray = readFile(inputFile);

    vector<float> floatArray = stringToArray(strArray);

    // start and stop the timer
    clock_t start = clock();
    quickSort(floatArray, 0, floatArray.size() - 1);
    clock_t end = clock();


    // calculate the time it took to sort the array
    float time = (float)(end - start) / CLOCKS_PER_SEC;
    // convert the time to ms
    time = time * 1000;

    // Append the time and input size to a file
    ofstream outFile;
    outFile.open("./Scales_Evan_executionTime.txt", ios::app);
    outFile << floatArray.size() << "\t" << time << endl;
    outFile.close();

    // print the sorted array to a new file
    ofstream outFile2;
    outFile2.open(outputFile, ios::app);
    for (int i = 0; i < floatArray.size(); i++)
    {
        outFile2 << floatArray[i] << " ";
    }
    outFile2.close();

    return 0;
}

void quickSort(vector<float> &array, int left, int right)
{
    if (left < right) {
        int pivot = partition(array, left, right);

        quickSort(array, left, pivot - 1);
        quickSort(array, pivot + 1, right);
    }
}

int partition(vector<float> &array, int left, int right)
{
    float pivot = array[left];
    int i = left;
    int j = right+1;

    do {
        do {
            i++;
        } while (array[i] < pivot && i <= right);

        do {
            j--;
        } while (array[j] > pivot && j >= left);

        swap(array[i], array[j]);
    } while (i < j);

    swap(array[i], array[j]);
    swap(array[left], array[j]);

    return j;
}

void swap(float &a, float &b)
{
    float temp = a;
    a = b;
    b = temp;
}


vector<float> stringToArray(string lineArray) {
    vector<float> floatArray;
    // split the line at the spaces
    string delimiter = " ";
    size_t pos = 0;
    string token;
    while ((pos = lineArray.find(delimiter)) != string::npos) {
        // get the line
        token = lineArray.substr(0, pos);

        // check if the number will be negative
        if (token[0] == '-') {
            // remove the negative sign
            token = token.substr(1);
            // convert the string to a float
            float num = stof(token);
            // make the number negative
            num = num * -1;
            // add the number to the array
            floatArray.push_back(num);
        }
        else {
            // convert the string to a float
            float num = stof(token);
            // add the number to the array
            floatArray.push_back(num);
        }
        // cout << token << endl;

        // remove the line from the string
        lineArray.erase(0, pos + delimiter.length());
    }
    return floatArray;
}

string readFile(string fileName)
{
    // Open the file
    ifstream inFile;
    inFile.open(fileName);

    // Check if the file opened successfully
    if (!inFile.is_open())
    {
        cout << "Error opening file " << fileName << endl;
        return 0;
    }

    // get the singular line from the file
    string line;
    getline(inFile, line);

    // close the file
    inFile.close();
    return line;
}