# Getting and Cleaning Data Assignment

### Variables provided

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation 
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

### Variables Used: 

Changes made to variable names: 
1. t replaced by time.
1. f replaced by frequency
1. Acc replaced by Accelerator
1. Gyro replaced by Gyroscope
1. Mag replaced by Magnitude
1. mean replaced by Mean
1. std replaced by Std
1. Only mean and standard deviation measurements used.

List:

* subject: 1 to 30 each representing a participant in the study
* activity: the activity that the subject was doing at the time of the measurement
* timeBodyAcceleratorMean()-X
* timeBodyAcceleratorMean()-Y
* timeBodyAcceleratorMean()-Z
* timeBodyAcceleratorStd()-X
* timeBodyAcceleratorStd()-Y
* timeBodyAcceleratorStd()-Z
* timeGravityAcceleratorMean()-X
* timeGravityAcceleratorMean()-Y
* timeGravityAcceleratorMean()-Z
* timeGravityAcceleratorStd()-X
* timeGravityAcceleratorStd()-Y
* timeGravityAcceleratorStd()-Z
* timeBodyAcceleratorJerkMean()-X
* timeBodyAcceleratorJerkMean()-Y
* timeBodyAcceleratorJerkMean()-Z
* timeBodyAcceleratorJerkStd()-X
* timeBodyAcceleratorJerkStd()-Y
* timeBodyAcceleratorJerkStd()-Z
* timeBodyGyroscopeMean()-X
* timeBodyGyroscopeMean()-Y
* timeBodyGyroscopeMean()-Z
* timeBodyGyroscopeStd()-X
* timeBodyGyroscopeStd()-Y
* timeBodyGyroscopeStd()-Z
* timeBodyGyroscopeJerkMean()-X
* timeBodyGyroscopeJerkMean()-Y
* timeBodyGyroscopeJerkMean()-Z
* timeBodyGyroscopeJerkStd()-X
* timeBodyGyroscopeJerkStd()-Y
* timeBodyGyroscopeJerkStd()-Z
* timeBodyAcceleratorMagnitudeMean()
* timeBodyAcceleratorMagnitudeStd()
* timeGravityAcceleratorMagnitudeMean()
* timeGravityAcceleratorMagnitudeStd()
* timeBodyAcceleratorJerkMagnitudeMean()
* timeBodyAcceleratorJerkMagnitudeStd()
* timeBodyGyroscopeMagnitudeMean()
* timeBodyGyroscopeMagnitudeStd()
* timeBodyGyroscopeJerkMagnitudeMean()
* timeBodyGyroscopeJerkMagnitudeStd()
* frequencyBodyAcceleratorMean()-X
* frequencyBodyAcceleratorMean()-Y
* frequencyBodyAcceleratorMean()-Z
* frequencyBodyAcceleratorStd()-X
* frequencyBodyAcceleratorStd()-Y
* frequencyBodyAcceleratorStd()-Z
* frequencyBodyAcceleratorJerkMean()-X
* frequencyBodyAcceleratorJerkMean()-Y
* frequencyBodyAcceleratorJerkMean()-Z
* frequencyBodyAcceleratorJerkStd()-X
* frequencyBodyAcceleratorJerkStd()-Y
* frequencyBodyAcceleratorJerkStd()-Z
* frequencyBodyGyroscopeMean()-X
* frequencyBodyGyroscopeMean()-Y
* frequencyBodyGyroscopeMean()-Z
* frequencyBodyGyroscopeStd()-X
* frequencyBodyGyroscopeStd()-Y
* frequencyBodyGyroscopeStd()-Z
* frequencyBodyAcceleratorMagnitudeMean()
* frequencyBodyAcceleratorMagnitudeStd()
* frequencyBodyAcceleratorJerkMagnitudeMean()
* frequencyBodyAcceleratorJerkMagnitudeStd()
* frequencyBodyGyroscopeMagnitudeMean()
* frequencyBodyGyroscopeMagnitudeStd()
* frequencyBodyGyroscopeJerkMagnitudeMean()
* frequencyBodyGyroscopeJerkMagnitudeStd()

### The activity_labels file contains mapping of activities and their codes:-

* 1 WALKING
* 2 WALKING_UPSTAIRS
* 3 WALKING_DOWNSTAIRS
* 4 SITTING
* 5 STANDING
* 6 LAYING

### IMP NOTE: 
* Features are normalized and bounded within [-1,1].
* Each feature vector is a row on the text file.


