# Getting and Cleaning Data Assignment

## 1. Data

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccelerator-XYZ and timeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerator-XYZ and timeGravityAccelerator-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAcceleratorJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAcceleratorMagnitude, timeGravityAcceleratorMagnitude, timeBodyAcceleratorJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerator-XYZ, frequencyBodyAcceleratorJerk-XYZ, frequencyBodyGyroscope-XYZ, frequencyBodyAcceleratorJerkMagnitude, frequencyBodyGyroscopeMagnitude, frequencyBodyGyroscopeJerkMagnitude.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

timeBodyAccelerator-XYZ
timeGravityAccelerator-XYZ
timeBodyAcceleratorJerk-XYZ
timeBodyGyroscope-XYZ
timeBodyGyroscopeJerk-XYZ
timeBodyAcceleratorMagnitude
timeGravityAcceleratorMagnitude
timeBodyAcceleratorJerkMagnitude
timeBodyGyroscopeMagnitude
timeBodyGyroscopeJerkMagnitude
frequencyBodyAccelerator-XYZ
frequencyBodyAcceleratorJerk-XYZ
frequencyBodyGyroscope-XYZ
frequencyBodyAcceleratorMagnitude
frequencyBodyAcceleratorJerkMagnitude
frequencyBodyGyroscopeMagnitude
frequencyBodyGyroscopeJerkMagnitude

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
timeBodyAcceleratorMean
timeBodyAcceleratorJerkMean
timeBodyGyroscopeMean
timeBodyGyroscopeJerkMean

The complete list of variables of each feature vector is available in 'features.txt'


## 2. Steps to clean the data

Step 1. Create variables holding datasets X_train , X_test, Y_train, Y_test, features, subject_train, subject_test, activities.

Step 2. Merge Train And Test datasets and give column names to this merged dataset using features data.

Step 3. Extract Columns with mean and standard deviation as measurements for each measurement using select function from dplyr package.

Step 4. Convert the activity column containg codes for the activities to acutal names of that activities using sapply function.

Step 5. Give proper descriptive names to columns.

Step 6. Create new dataset containing mean of each measurement grouped by subject and activites. Name of the new dataset is "Tidy_data.txt" .


