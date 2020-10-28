This codebooks describes the variables in the tidy data set ("X_mean_std.txt"), which results from processing the raw data with the "run_analysis.R" script.

The tidy data set contains 108 columns. The meaning of the first 106 variables can be found in the "Readme.txt" and "features_info.txt" files within the original data set. From the raw data, only columns whose name contained "[Mm]ean" or "std" were selected and stored in the tidy data set. Other than this selection, the data is unaltered from the raw data.
The first 7352 of the 10,299 rows correspond to observations from the training data, while the remaining 2947 rows correspond to the test data.

The last two columns of the tidy data set are labled "activity" and "subject".
"activity" contains a description the activity for each row. This description was assigned by using the files "y_train.txt", "y_test.txt", which contain numeric activity identifiers for each row. The numeric activity identifiers were translated into descriptive activities using the file "activity_labels.txt".
The column "subject" contains the numeric subject identifiers found in the files "subject_train.txt", "subject_test.txt".

The table "Tidydata.txt" is the requested result according to task 5 of the assignment. For all variables, the means with respect to a grouping to both subject and activity is calculated.
