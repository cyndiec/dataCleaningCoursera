##The R script
With your data in your working directory, source the 'run_analysis.R' script and it will install or update and load the dplyr package and run the analysis. It creates a tidy, independent, and single data set and writes it to a file titled 'cleanSummarizedData.txt'.

You also have the CodeBook.md which describes each variable and what transformations we did to the dataset overall.

##Assumptions
This script assumes that the Samsung data of Human activity Recognition is sitting in the same folder as the script. Find more information about the data set here: [information on dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

You can download the data here: [original dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).


##Reading the tidy data
To read the data, run:
> read.table("cleanSummarizedData.txt",header=TRUE)


