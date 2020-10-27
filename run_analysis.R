library(dplyr)

##read the required data files from "UCI HAR Dataset" - Folder

    ## 1. Test Data:
    X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
    ## 2. Test Activities - each row corresponds to a row in X_test, containing activity code (1 .. 6)
    y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")
    ## 3. Training Data:
    X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
    ## 4. Training Activities - each row corresponds to a row in X_test, containing activity code (1 .. 6)
    y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
    ## 5. Labels for X_test, X_train
    features<-read.table("./UCI HAR Dataset/features.txt")
    ## 6. Descriptive Activities & corresponding codes
    activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
    ## 7. Subject IDs for Test Data:
    subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
    ## 8. Subject IDs for Training Data:
    subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")

##Merge X_train and X_test
    X_complete<-rbind(X_train, X_test)

##Merge y_train and y_test
    y_complete<-rbind(y_train, y_test)
    
##Merge subject_train and subject_test
    subject_complete<-rbind(subject_train, subject_test)
    
##Use column names from "features" to label X_complete
    colnames(X_complete)=features$V2

##Extract measurements on the mean and standard deviation for each measurement
    X_mean_std<-X_complete[,cbind( grep("[Mm]ean", names(X_complete)), grep("std", names(X_complete)))]

##Translate y_test, y_train into descriptive activities and add respective column to X_test, X_train
    X_mean_std$activity<-activity_labels$V2[y_complete$V1]
    
    
##Add subject-ID to X_mean_std
    X_mean_std$subject<-subject_complete$V1

##Save X_mean_std
    write.table(X_mean_std, "X_mean_std.txt")
