# Course 3 project
##Steps
* Read in X_test.txt using read.table and store in test variable and cbind() the subject and Y.
* Read in X_train.txt using read.table and store in train variable and cbind() the subject and Y.
* rbind() both test and train and store in tidy variable
* Read in features.txt using read.table store in feature
* Set feature$V1 to NULL
* Using gsub() get rid of all special characters and spaces in feature
* rbind "subject" and "activity" to feature variable
* Use colnames() for tidy variable and set it to features$V2
* Subset tidy a new data.table variable names tidy2 by not subetting duplicated() colnames(tidy)
* pipe any column names in tidy2 that matches("mean|std|activity|subject") into select() and store in selected variable
* pipe summarize\_each(funs(mean)) to group\_by(activity,subject) from selected and store into avg
* write.table(avg,file="UCI HAR Dataset/tidy.txt",row.name=FALSE)
* Note: the activity names are not described in the tidy.txt to time constraints
