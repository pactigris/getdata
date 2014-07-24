## Human Activity Recognition Using Smartphones

### Data
The raw data is obtained from:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

First, the training and testing datasets are combined into one dataset. Then from the combined datset, the final tidy dataset (with 180 observations of 68 variables) is created as follow:

1. The tidy dataset's variables are only a subset of the raw dataset's features, more specifically the mean and standard deviation of each measurement for a total of 66 variables. 

2. Each observation in the tidy dataset is correspond to one unique combination of a subject identifier and an activity label. And each value in the observation is the average value of a variable for the unique combination. The subject and activity are also attached to the tidy dataset, hence we have total of 68 variables.

### Variables
Below is the description of 68 variables, which include the name, meaning, type and range of each variable.

| No. | Variable                                   | Meaning                                                                             | Type      | Range                                                                      |
|-----|--------------------------------------------|-------------------------------------------------------------------------------------|-----------|----------------------------------------------------------------------------|
| 1   | Subject                                    | Subject identifier                                                                  | Integer   | 1..30                                                                      |
| 2   | Activity                                   | Activity label                                                                      | Character | (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) |
| 3   | TimeBodyAcceleration.mean.X                | mean(X) of body acceleration (time domain signal)                                   | Numeric   | -1..1                                                                      |
| 4   | TimeBodyAcceleration.mean.Y                | mean(Y) of body acceleration (time domain signal)                                   | Numeric   | -1..1                                                                      |
| 5   | TimeBodyAcceleration.mean.Z                | mean(Z) of body acceleration (time domain signal)                                   | Numeric   | -1..1                                                                      |
| 6   | TimeBodyAcceleration.std.X                 | std(X) of body acceleration (time domain signal)                                    | Numeric   | -1..1                                                                      |
| 7   | TimeBodyAcceleration.std.Y                 | std(Y) of body acceleration (time domain signal)                                    | Numeric   | -1..1                                                                      |
| 8   | TimeBodyAcceleration.std.Z                 | std(Z) of body acceleration (time domain signal)                                    | Numeric   | -1..1                                                                      |
| 9   | TimeGravityAcceleration.mean.X             | mean(X) of gravity acceleration (time domain signal)                                | Numeric   | -1..1                                                                      |
| 10  | TimeGravityAcceleration.mean.Y             | mean(Y) of gravity acceleration (time domain signal)                                | Numeric   | -1..1                                                                      |
| 11  | TimeGravityAcceleration.mean.Z             | mean(Z) of gravity acceleration (time domain signal)                                | Numeric   | -1..1                                                                      |
| 12  | TimeGravityAcceleration.std.X              | std(X) of gravity acceleration (time domain signal)                                 | Numeric   | -1..1                                                                      |
| 13  | TimeGravityAcceleration.std.Y              | std(Y) of gravity acceleration (time domain signal)                                 | Numeric   | -1..1                                                                      |
| 14  | TimeGravityAcceleration.std.Z              | std(Z) of gravity acceleration (time domain signal)                                 | Numeric   | -1..1                                                                      |
| 15  | TimeBodyAccelerationJerk.mean.X            | mean(X) of Jerk signal of body acceleration (time domain signal)                    | Numeric   | -1..1                                                                      |
| 16  | TimeBodyAccelerationJerk.mean.Y            | mean(Y) of Jerk signal of body acceleration (time domain signal)                    | Numeric   | -1..1                                                                      |
| 17  | TimeBodyAccelerationJerk.mean.Z            | mean(Z) of Jerk signal of body acceleration (time domain signal)                    | Numeric   | -1..1                                                                      |
| 18  | TimeBodyAccelerationJerk.std.X             | std(X) of Jerk signal of body acceleration (time domain signal)                     | Numeric   | -1..1                                                                      |
| 19  | TimeBodyAccelerationJerk.std.Y             | std(Y) of Jerk signal of body acceleration (time domain signal)                     | Numeric   | -1..1                                                                      |
| 20  | TimeBodyAccelerationJerk.std.Z             | std(Z) of Jerk signal of body acceleration (time domain signal)                     | Numeric   | -1..1                                                                      |
| 21  | TimeBodyGyroscope.mean.X                   | mean(X) of body angular velocity (time domain signal)                               | Numeric   | -1..1                                                                      |
| 22  | TimeBodyGyroscope.mean.Y                   | mean(Y) of body angular velocity (time domain signal)                               | Numeric   | -1..1                                                                      |
| 23  | TimeBodyGyroscope.mean.Z                   | mean(Z) of body angular velocity (time domain signal)                               | Numeric   | -1..1                                                                      |
| 24  | TimeBodyGyroscope.std.X                    | std(X) of body angular velocity (time domain signal)                                | Numeric   | -1..1                                                                      |
| 25  | TimeBodyGyroscope.std.Y                    | std(Y) of body angular velocity (time domain signal)                                | Numeric   | -1..1                                                                      |
| 26  | TimeBodyGyroscope.std.Z                    | std(Z) of body angular velocity (time domain signal)                                | Numeric   | -1..1                                                                      |
| 27  | TimeBodyGyroscopeJerk.mean.X               | mean(X) of Jerk signal of body angular velocity (time domain signal)                | Numeric   | -1..1                                                                      |
| 28  | TimeBodyGyroscopeJerk.mean.Y               | mean(Y) of Jerk signal of body angular velocity (time domain signal)                | Numeric   | -1..1                                                                      |
| 29  | TimeBodyGyroscopeJerk.mean.Z               | mean(Z) of Jerk signal of body angular velocity (time domain signal)                | Numeric   | -1..1                                                                      |
| 30  | TimeBodyGyroscopeJerk.std.X                | std(X) of Jerk signal of body angular velocity (time domain signal)                 | Numeric   | -1..1                                                                      |
| 31  | TimeBodyGyroscopeJerk.std.Y                | std(Y) of Jerk signal of body angular velocity (time domain signal)                 | Numeric   | -1..1                                                                      |
| 32  | TimeBodyGyroscopeJerk.std.Z                | std(Z) of Jerk signal of body angular velocity (time domain signal)                 | Numeric   | -1..1                                                                      |
| 33  | TimeBodyAccelerationMagnitude.mean         | mean of magnitude of body acceleration (time domain signal)                         | Numeric   | -1..1                                                                      |
| 34  | TimeBodyAccelerationMagnitude.std          | std of magnitude of body acceleration (time domain signal)                          | Numeric   | -1..1                                                                      |
| 35  | TimeGravityAccelerationMagnitude.mean      | mean of magnitude of gravity acceleration (time domain signal)                      | Numeric   | -1..1                                                                      |
| 36  | TimeGravityAccelerationMagnitude.std       | std of magnitude of gravity acceleration (time domain signal)                       | Numeric   | -1..1                                                                      |
| 37  | TimeBodyAccelerationJerkMagnitude.mean     | mean of magnitude of Jerk signal of body acceleration (time domain signal)          | Numeric   | -1..1                                                                      |
| 38  | TimeBodyAccelerationJerkMagnitude.std      | std of magnitude of Jerk signal of body acceleration (time domain signal)           | Numeric   | -1..1                                                                      |
| 39  | TimeBodyGyroscopeMagnitude.mean            | mean of magnitude of body angular velocity (time domain signal)                     | Numeric   | -1..1                                                                      |
| 40  | TimeBodyGyroscopeMagnitude.std             | std of magnitude of body angular velocity (time domain signal)                      | Numeric   | -1..1                                                                      |
| 41  | TimeBodyGyroscopeJerkMagnitude.mean        | mean of magnitude of Jerk signal of body angular velocity (time domain signal)      | Numeric   | -1..1                                                                      |
| 42  | TimeBodyGyroscopeJerkMagnitude.std         | std of magnitude of Jerk signal of body angular velocity (time domain signal)       | Numeric   | -1..1                                                                      |
| 43  | FreqBodyAcceleration.mean.X                | mean(X) of body acceleration (frequency domain signal)                              | Numeric   | -1..1                                                                      |
| 44  | FreqBodyAcceleration.mean.Y                | mean(Y) of body acceleration (frequency domain signal)                              | Numeric   | -1..1                                                                      |
| 45  | FreqBodyAcceleration.mean.Z                | mean(Z) of body acceleration (frequency domain signal)                              | Numeric   | -1..1                                                                      |
| 46  | FreqBodyAcceleration.std.X                 | std(X) of body acceleration (frequency domain signal)                               | Numeric   | -1..1                                                                      |
| 47  | FreqBodyAcceleration.std.Y                 | std(Y) of body acceleration (frequency domain signal)                               | Numeric   | -1..1                                                                      |
| 48  | FreqBodyAcceleration.std.Z                 | std(Z) of body acceleration (frequency domain signal)                               | Numeric   | -1..1                                                                      |
| 49  | FreqBodyAccelerationJerk.mean.X            | mean(X) of Jerk signal of body acceleration (frequency domain signal)               | Numeric   | -1..1                                                                      |
| 50  | FreqBodyAccelerationJerk.mean.Y            | mean(Y) of Jerk signal of body acceleration (frequency domain signal)               | Numeric   | -1..1                                                                      |
| 51  | FreqBodyAccelerationJerk.mean.Z            | mean(Z) of Jerk signal of body acceleration (frequency domain signal)               | Numeric   | -1..1                                                                      |
| 52  | FreqBodyAccelerationJerk.std.X             | std(X) of Jerk signal of body acceleration (frequency domain signal)                | Numeric   | -1..1                                                                      |
| 53  | FreqBodyAccelerationJerk.std.Y             | std(Y) of Jerk signal of body acceleration (frequency domain signal)                | Numeric   | -1..1                                                                      |
| 54  | FreqBodyAccelerationJerk.std.Z             | std(Z) of Jerk signal of body acceleration (frequency domain signal)                | Numeric   | -1..1                                                                      |
| 55  | FreqBodyGyroscope.mean.X                   | mean(X) of body angular velocity (frequency domain signal)                          | Numeric   | -1..1                                                                      |
| 56  | FreqBodyGyroscope.mean.Y                   | mean(Y) of body angular velocity (frequency domain signal)                          | Numeric   | -1..1                                                                      |
| 57  | FreqBodyGyroscope.mean.Z                   | mean(Z) of body angular velocity (frequency domain signal)                          | Numeric   | -1..1                                                                      |
| 58  | FreqBodyGyroscope.std.X                    | std(X) of body angular velocity (frequency domain signal)                           | Numeric   | -1..1                                                                      |
| 59  | FreqBodyGyroscope.std.Y                    | std(Y) of body angular velocity (frequency domain signal)                           | Numeric   | -1..1                                                                      |
| 60  | FreqBodyGyroscope.std.Z                    | std(Z) of body angular velocity (frequency domain signal)                           | Numeric   | -1..1                                                                      |
| 61  | FreqBodyAccelerationMagnitude.mean         | mean of magnitude of body acceleration (frequency domain signal)                    | Numeric   | -1..1                                                                      |
| 62  | FreqBodyAccelerationMagnitude.std          | std of magnitude of body acceleration (frequency domain signal)                     | Numeric   | -1..1                                                                      |
| 63  | FreqBodyBodyAccelerationJerkMagnitude.mean | mean of magnitude of Jerk signal of body acceleration (frequency domain signal)     | Numeric   | -1..1                                                                      |
| 64  | FreqBodyBodyAccelerationJerkMagnitude.std  | std of magnitude of Jerk signal of body acceleration (frequency domain signal)      | Numeric   | -1..1                                                                      |
| 65  | FreqBodyBodyGyroscopeMagnitude.mean        | mean of magnitude of body angular velocity (frequency domain signal)                | Numeric   | -1..1                                                                      |
| 66  | FreqBodyBodyGyroscopeMagnitude.std         | std of magnitude of body angular velocity (frequency domain signal)                 | Numeric   | -1..1                                                                      |
| 67  | FreqBodyBodyGyroscopeJerkMagnitude.mean    | mean of magnitude of Jerk signal of body angular velocity (frequency domain signal) | Numeric   | -1..1                                                                      |
| 68  | FreqBodyBodyGyroscopeJerkMagnitude.std     | std of magnitude of Jerk signal of body angular velocity (frequency domain signal)  | Numeric   | -1..1                                                                      |