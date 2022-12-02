# QuickSortAnalysis

# Compile Files

This will generate the necessary files to run 

    make compile

# Generating Input files
This will generate 25 files for each input size (10, 100, 1000)

Sleeps after generating each array for 1 second, to ensure random arrays (takes 75 seconds to generate all files)

Will be in the format of InputSizesize_file_.txt ex InputSize10_1_.txt

    ./generatetxt
    
Executes the input generation

# Generating Results

To generate results first generate the input files

All 75 input files can be sorted at once using genereateresults.

This will save the execution time of sorting each input to ./Scales_Evan_executionTime.txt

Each input will create an output file of the sorted input. ex Input1Size10SORTED.txt

    make generateresults
    
Compiles and executes all 75 input files with quicksort algorithm

Each file can be executed singularly using quicksort

This will save the execution time of sorting the input to ./Scales_Evan_executionTime.txt

    ./quicksort input.txt output.txt
 
 Executes quicksort on input.txt and saves result to output.txt
 
 # Computing Results
 
 Computing results reads all the execution times and input sizes in ./Scales_Evan_executionTime.txt and calculates the average execution time for each input size. Saves these results to ./Scales_Evan_averageExecutionTime.txt
 
    ./computeresults
    
Executes the computing results code

Scales_Evan_averageExecutionTime.jpg is based off the following

Input Size	Time (ms)

1000	0.15788

100	0.0148

10	0.00308

# Clear
How to clear files created 

    make clear
    
Used to clear generated .o files

    make cleartxt
    
Used to clear generated txt and reset Scales_Evan_executionTime.txt and Scales_Evan_averageExecutionTime.txt
    
