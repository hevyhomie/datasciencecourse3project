##Steps
* Read in features.txt using read.table function and store into variable named features.
* Remove the 1st column (V1) in features by setting it to NULL.
* Remove any spaces and special characters in features variable by using regular expressions function gsub.
* Read in X_text.txt using read.table function and store into variable named test.
* Use colnames function to label each column in test with each row in features variable.
* Read in subject_test.txt using read.table function and store into variable named subtest.
* Add a new column named subject to test variable and assign subtest$V1 to test$subject.
* Read in Y_test.txt using read.table function and store into variable named acttest.
* Add a new column named activity to test variable and assign acttest$V1 to test$activity.
* Read in X_train.txt using read.table function and store into variable named train.
* Use colnames function to label each column in train with each row in features variable.
* Read in subject_train.txt using read.table function and store into variable named subtrain.
* Add a new column named subject to train variable and assign subtrain$V1 to train$subject.
* Read in Y_train.txt using read.table function and store into variable named acttrain.
* Add a new column named activity to train variable and assign acttrain$V1 to train$activity.
* Use rbind to merge test data.table to train data.table to create one dataset.
* Subset the new train data.table with which function to only select columns named mean and standard deviation and store in new variable named ulti_data.
* Rename each activity number in each row to the corresponding name in activity_labels.txt.
* Using the group_by function group by each activity and subject and store it in variable actsub.
* Use the summarize function on actsub and pass in the mean function to summarize this dataset by averaging the other variables.
