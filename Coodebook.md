# Getting and Cleaning data Codebook

This dataset presents a 180 x 68 matrix (rows x columns). 

* Each row represents one activity for each subject (person);
* There are 30 persons, which executes 6 activities, thus the 180 rows;
* The first column is the activity name, as listed below:
  * WALKING;
  * WALKING_UPSTAIRS;
  * WALKING_DOWNSTAIRS;
  * SITTING;
  * STANDING;
  * LAYING.
* The second column is the subjectId, from 1 to 30;
* The other 66 columns refers variables, each one measuring one type of data.

## Data type
* Activities are factor type;
* Subjects are integer type;
* All the other variables are double type.

## Variables
* Variables starting with "**f**" contains data after the Fast Fourier Transform.
* Variables starting with "**t**" contains raw data, before the Fast Fourier Transform.
* Variables ending with "**mean()-X/Y/Z**" contains the mean value of the data or for its axis.
* Variables ending with "**std()-X/Y/Z**" contains the standard deviation of the data or for its axis.
* The middle of the variable name contains what exactly is the data and its procedence, if it was taken from the accelerometer or from the gyroscope.

1. "activitylabel"
1. "Subject"
1. "tBodyAccmeanX"
1. "tBodyAccmeanY"
1. "tBodyAccmeanZ"
1. "tBodyAccstdX"
1. "tBodyAccstdY"
1. "tBodyAccstdZ"
1. "tGravityAccmeanX"
1. "tGravityAccmeanY"
1. "tGravityAccmeanZ"
1. "tGravityAccstdX"
1. "tGravityAccstdY"
1. "tGravityAccstdZ"
1. "tBodyAccJerkmeanX"
1. "tBodyAccJerkmeanY"
1. "tBodyAccJerkmeanZ"
1. "tBodyAccJerkstdX"
1. "tBodyAccJerkstdY"
1. "tBodyAccJerkstdZ"
1. "tBodyGyromeanX"
1. "tBodyGyromeanY"
1. "tBodyGyromeanZ"
1. "tBodyGyrostdX"
1. "tBodyGyrostdY"
1. "tBodyGyrostdZ"
1. "tBodyGyroJerkmeanX"
1. "tBodyGyroJerkmeanY"
1. "tBodyGyroJerkmeanZ"
1. "tBodyGyroJerkstdX"
1. "tBodyGyroJerkstdY"
1. "tBodyGyroJerkstdZ"
1. "tBodyAccMagmean"
1. "tBodyAccMagstd"
1. "tGravityAccMagmean"
1. "tGravityAccMagstd"
1. "tBodyAccJerkMagmean"
1. "tBodyAccJerkMagstd"
1. "tBodyGyroMagmean"
1. "tBodyGyroMagstd"
1. "tBodyGyroJerkMagmean"
1. "tBodyGyroJerkMagstd"
1. "fBodyAccmeanX"
1. "fBodyAccmeanY"
1. "fBodyAccmeanZ"
1. "fBodyAccstdX"
1. "fBodyAccstdY"
1. "fBodyAccstdZ"
1. "fBodyAccJerkmeanX"
1. "fBodyAccJerkmeanY"
1. "fBodyAccJerkmeanZ"
1. "fBodyAccJerkstdX"
1. "fBodyAccJerkstdY"
1. "fBodyAccJerkstdZ"
1. "fBodyGyromeanX"
1. "fBodyGyromeanY"
1. "fBodyGyromeanZ"
1. "fBodyGyrostdX"
1. "fBodyGyrostdY"
1. "fBodyGyrostdZ"
1. "fBodyAccMagmean"
1. "fBodyAccMagstd"
1. "fBodyBodyAccJerkMagmean"
1. "fBodyBodyAccJerkMagstd"
1. "fBodyBodyGyroMagmean"
1. "fBodyBodyGyroMagstd"
1. "fBodyBodyGyroJerkMagmean"
1. "fBodyBodyGyroJerkMagstd"
