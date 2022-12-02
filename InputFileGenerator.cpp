// Written by Evan Scales

// import important libraries
#include <chrono>
#include <thread>
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include <cstdlib>


using namespace std;
using std::ofstream;

// function prototypes
vector<float> generateArray(int size);
void generateFiles(int size, string fileName);

int main(int argc, char const *argv[])
{
   
    generateFiles(10, "InputSize10");
    generateFiles(100, "InputSize100");
    generateFiles(1000, "InputSize1000");


    return 0;
}

void generateFiles(int size, string fileName) {
    string tempFileName = fileName;

    for (int i = 0; i < 25; i++) {
        vector<float> array = generateArray(size);
        ofstream outFile;
        fileName += "_"+to_string(i+1)+"_.txt";
        outFile.open(fileName, ios::app);
        for (int i = 0; i < array.size(); i++) {
            outFile << array[i] << " ";
        }
        outFile.close();
        array.clear();
        fileName = tempFileName;
    }
}

vector<float> generateArray(int size)
{
    // Create a vector of floats
    // With values between -500 and 500
    srand((unsigned int)time(NULL));
    float low = -500.0;
    float high = 500.0;

    vector<float> array;
    for (int i = 0; i < size; i++)
    {
        array.push_back(low + static_cast <float> (rand()) /( static_cast <float> (RAND_MAX/(high-low))));
    }
    // sleep for a second to make sure the random number generator is different
    std::this_thread::sleep_for(std::chrono::milliseconds(1000));
    return array;
}