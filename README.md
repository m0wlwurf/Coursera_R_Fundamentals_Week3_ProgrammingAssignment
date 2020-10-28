This repo contains a README-file (this file), a analysis script "run_analysis.R" and a set of tidy data ("X_mean_std.txt") created by the script based on the "Human Activity Recognition Using Smartphones Data Set" from UCI.edu (you can download the original data from: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones# ).

To view the tidy data set you can use following command in R: "View(read.table("X_mean_std.txt"))" after you set your working directory accordingly.

The script consists of the following steps (see also comments in the script file itself):
1. read the required input data files from "UCI HAR Dataset" - Folder
2. Merge the data from the single files, representing training & test data, into a signle dataset
3. Label the columns according to "features.txt"
4. Using the labels, only extract measurements of the mean and standard deviation (abbreaviated by "std" in features.txt) for each measurement.
5. Translate the "activity ID" into descriptive activities for each observation and add a column "activities" containing the descriptive activities to the dataset
6. Add a column "subject" which identifies the subject for each observation.
7. Store the resulting dataset in a text-file ("X_mean_std.txt") in the selected working directory.

For more information, check the comments & code within the script.
