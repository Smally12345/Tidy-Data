# Tidy-Data

## Dataset: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## Steps to clean the data

Step 1. Create variables holding datasets X_train , X_test, Y_train, Y_test, features, subject_train, subject_test, activities.

Step 2. Merge Train And Test datasets and give column names to this merged dataset using features data.

Step 3. Extract Columns with mean and standard deviation as measurements for each measurement using select function from dplyr package.

Step 4. Convert the activity column containg codes for the activities to acutal names of that activities using sapply function.

Step 5. Give proper descriptive names to columns.

Step 6. Create new dataset containing mean of each measurement grouped by subject and activites. Name of the new dataset is "Tidy_data.txt" .
