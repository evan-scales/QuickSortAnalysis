// Written by Evan Scales

// import important libraries
#include <iostream>
#include <fstream>
#include <string>
#include <vector>
#include<unordered_map>


using namespace std;
using std::ofstream;

int main(int argc, char const *argv[])
{
    // Open the file
    ifstream inFile;
    string fileName = "./Scales_Evan_executionTime.txt";
    inFile.open(fileName);

    // Check if the file opened successfully
    if (!inFile.is_open())
    {
        cout << "Error opening file " << fileName << endl;
        return 0;
    }

    // read the file
    string line;
    vector<string> lines;
    while (getline(inFile, line))
    {
        lines.push_back(line);
    }
    inFile.close();

    // Create a map with key int and vector of floats as the key
    unordered_map<int, vector<float> > map;

    // Loop through the lines and add the values to the map
    for (int i = 1; i < lines.size(); i++) {
        string line = lines[i];
        if (line == "") {
            continue;
        }
        int index = line.find("\t");
        int key = stoi(line.substr(0, index));
        float value = stof(line.substr(index + 1));
        map[key].push_back(value);
    }

    ofstream outFile;
    string outFileName = "./Scales_Evan_averageExecutionTime.txt";
    outFile.open(outFileName, ios::app);

    // calculate the average execution time for each key
    for (auto it = map.begin(); it != map.end(); it++) {
        float sum = 0;
        for (int i = 0; i < it->second.size(); i++) {
            sum += it->second[i];
        }
        float average = sum / it->second.size();
        cout << "Average execution time for " << it->first << " is " << average << " ms" << endl;
        outFile << it->first << "\t" << average << endl;
    }
    outFile.close();


    return 0;
}