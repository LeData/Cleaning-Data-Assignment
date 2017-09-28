Human Activity Recognition Using Smartphones Summary
================

By **Dany Majard** for *Getting & Cleaning Data - John Hopkins University*

Based on raw data by: Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto. Smartlab - Non Linear Complex Systems Laboratory DITEN - Università degli Studi di Genova. Via Opera Pia 11A, I-16145, Genoa, Italy. <activityrecognition@smartlab.ws> www.smartlab.ws

The dataset includes the following files:
-----------------------------------------

-   'README.md'

-   'All\_means\_and\_sd.csv' : Subset of the oridinal data conserving the means and standard deviation measures only.

-   'Avg\_by\_activity.csv' : Summary data (means) from All\_means\_and\_sd, grouped by activity and subject.

-   'UCI HAR Dataset/features.txt': Original List of all features.

-   'UCI HAR Dataset/activity\_labels.txt': Links the class labels with their activity name.

-   'UCI HAR Dataset/train/X\_train.txt': Original Training set.

-   'UCI HAR Dataset/train/y\_train.txt': Original Training labels.

-   'UCI HAR Dataset/test/X\_test.txt': Original Test set.

-   'UCI HAR Dataset/test/y\_test.txt': Original Test labels.

-   'UCI HAR Dataset/train/subject\_train.txt': Original list of subjects who performed the activity for each window sample. Its range is from 1 to 30.

Description of the original experiment:
---------------------------------------

Here is a description of the experiment from the source:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
>
> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

In more details:

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
>
> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).
>
> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).
>
> These signals were used to estimate variables of the feature vector for each pattern:
> '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals and kept for this project are:

-   mean(): Mean value
-   std(): Standard deviation

of the following variables:

-   tBodyAcc-XYZ
-   tGravityAcc-XYZ
-   tBodyAccJerk-XYZ
-   tBodyGyro-XYZ
-   tBodyGyroJerk-XYZ
-   tBodyAccMag
-   tGravityAccMag
-   tBodyAccJerkMag
-   tBodyGyroMag
-   tBodyGyroJerkMag
-   fBodyAcc-XYZ
-   fBodyAccJerk-XYZ
-   fBodyGyro-XYZ
-   fBodyAccMag
-   fBodyAccJerkMag
-   fBodyGyroMag
-   fBodyGyroJerkMag

Description of the data files
-----------------------------

-   All\_means\_and-sd provides a collection of 68-feature vectors with :
    -   the means and standard deviation of the original time and frequency domain variables.
    -   An identifier of the subject who carried out the experiment.
    -   An identifier of the activity performed.
-   Avg\_by\_activity provides a collection of 68-feature vectors with :
    -   the means of the above data grouped by activity and subject.
    -   An identifier of the subject who carried out the experiment.
    -   An identifier of the activity performed.

Notes:
======

-   Features are normalized and bounded within \[-1,1\].
-   Each feature vector is a row on the text file.

For more information about the original dataset contact: <activityrecognition@smartlab.ws>

License for the original content:
=================================

Use of the original dataset in publications must be acknowledged by referencing the following publication \[1\]

\[1\] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
