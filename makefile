# please reference readme_instructions.md if you need help utilizing this

compile: Scales_Evan_QuickSort.cpp InputFileGenerator.cpp ComputeAverageTime.cpp
	g++ -Wall -std=c++17 Scales_Evan_QuickSort.cpp -o quicksort
	g++ -Wall -std=c++17 InputFileGenerator.cpp -o generatetxt
	g++ -Wall -std=c++17 ComputeAverageTime.cpp -o computeresults

generateresults: 
	./quicksort InputSize10_1_.txt Input1Size10SORTED.txt
	./quicksort InputSize10_2_.txt Input2Size10SORTED.txt
	./quicksort InputSize10_3_.txt Input3Size10SORTED.txt
	./quicksort InputSize10_4_.txt Input4Size10SORTED.txt
	./quicksort InputSize10_5_.txt Input5Size10SORTED.txt
	./quicksort InputSize10_6_.txt Input6Size10SORTED.txt
	./quicksort InputSize10_7_.txt Input7Size10SORTED.txt
	./quicksort InputSize10_8_.txt Input8Size10SORTED.txt
	./quicksort InputSize10_9_.txt Input9Size10SORTED.txt
	./quicksort InputSize10_10_.txt Input10Size10SORTED.txt
	./quicksort InputSize10_11_.txt Input11Size10SORTED.txt
	./quicksort InputSize10_12_.txt Input12Size10SORTED.txt
	./quicksort InputSize10_13_.txt Input13Size10SORTED.txt
	./quicksort InputSize10_14_.txt Input14Size10SORTED.txt
	./quicksort InputSize10_15_.txt Input15Size10SORTED.txt
	./quicksort InputSize10_16_.txt Input16Size10SORTED.txt
	./quicksort InputSize10_17_.txt Input17Size10SORTED.txt
	./quicksort InputSize10_18_.txt Input18Size10SORTED.txt
	./quicksort InputSize10_19_.txt Input19Size10SORTED.txt
	./quicksort InputSize10_20_.txt Input20Size10SORTED.txt
	./quicksort InputSize10_21_.txt Input21Size10SORTED.txt
	./quicksort InputSize10_22_.txt Input22Size10SORTED.txt
	./quicksort InputSize10_23_.txt Input23Size10SORTED.txt
	./quicksort InputSize10_24_.txt Input24Size10SORTED.txt
	./quicksort InputSize10_25_.txt Input25Size10SORTED.txt

	./quicksort InputSize100_1_.txt Input1Size100SORTED.txt
	./quicksort InputSize100_2_.txt Input2Size100SORTED.txt
	./quicksort InputSize100_3_.txt Input3Size100SORTED.txt
	./quicksort InputSize100_4_.txt Input4Size100SORTED.txt
	./quicksort InputSize100_5_.txt Input5Size100SORTED.txt
	./quicksort InputSize100_6_.txt Input6Size100SORTED.txt
	./quicksort InputSize100_7_.txt Input7Size100SORTED.txt
	./quicksort InputSize100_8_.txt Input8Size100SORTED.txt
	./quicksort InputSize100_9_.txt Input9Size100SORTED.txt
	./quicksort InputSize100_10_.txt Input10Size100SORTED.txt
	./quicksort InputSize100_11_.txt Input11Size100SORTED.txt
	./quicksort InputSize100_12_.txt Input12Size100SORTED.txt
	./quicksort InputSize100_13_.txt Input13Size100SORTED.txt
	./quicksort InputSize100_14_.txt Input14Size100SORTED.txt
	./quicksort InputSize100_15_.txt Input15Size100SORTED.txt
	./quicksort InputSize100_16_.txt Input16Size100SORTED.txt
	./quicksort InputSize100_17_.txt Input17Size100SORTED.txt
	./quicksort InputSize100_18_.txt Input18Size100SORTED.txt
	./quicksort InputSize100_19_.txt Input19Size100SORTED.txt
	./quicksort InputSize100_20_.txt Input20Size100SORTED.txt
	./quicksort InputSize100_21_.txt Input21Size100SORTED.txt
	./quicksort InputSize100_22_.txt Input22Size100SORTED.txt
	./quicksort InputSize100_23_.txt Input23Size100SORTED.txt
	./quicksort InputSize100_24_.txt Input24Size100SORTED.txt
	./quicksort InputSize100_25_.txt Input25Size100SORTED.txt

	./quicksort InputSize1000_1_.txt Input1Size1000SORTED.txt
	./quicksort InputSize1000_2_.txt Input2Size1000SORTED.txt
	./quicksort InputSize1000_3_.txt Input3Size1000SORTED.txt
	./quicksort InputSize1000_4_.txt Input4Size1000SORTED.txt
	./quicksort InputSize1000_5_.txt Input5Size1000SORTED.txt
	./quicksort InputSize1000_6_.txt Input6Size1000SORTED.txt
	./quicksort InputSize1000_7_.txt Input7Size1000SORTED.txt
	./quicksort InputSize1000_8_.txt Input8Size1000SORTED.txt
	./quicksort InputSize1000_9_.txt Input9Size1000SORTED.txt
	./quicksort InputSize1000_10_.txt Input10Size1000SORTED.txt
	./quicksort InputSize1000_11_.txt Input11Size1000SORTED.txt
	./quicksort InputSize1000_12_.txt Input12Size1000SORTED.txt
	./quicksort InputSize1000_13_.txt Input13Size1000SORTED.txt
	./quicksort InputSize1000_14_.txt Input14Size1000SORTED.txt
	./quicksort InputSize1000_15_.txt Input15Size1000SORTED.txt
	./quicksort InputSize1000_16_.txt Input16Size1000SORTED.txt
	./quicksort InputSize1000_17_.txt Input17Size1000SORTED.txt
	./quicksort InputSize1000_18_.txt Input18Size1000SORTED.txt
	./quicksort InputSize1000_19_.txt Input19Size1000SORTED.txt
	./quicksort InputSize1000_20_.txt Input20Size1000SORTED.txt
	./quicksort InputSize1000_21_.txt Input21Size1000SORTED.txt
	./quicksort InputSize1000_22_.txt Input22Size1000SORTED.txt
	./quicksort InputSize1000_23_.txt Input23Size1000SORTED.txt
	./quicksort InputSize1000_24_.txt Input24Size1000SORTED.txt
	./quicksort InputSize1000_25_.txt Input25Size1000SORTED.txt


clear:
	rm *.o a.out quicksort computeresults generatetxt generateresults

cleartxt:
	rm *.txt
	echo "Input Size  Time" > Scales_Evan_averageExecutionTime.txt
	echo "Input Size  Time" > Scales_Evan_executionTime.txt