# Codebook 

This is the codebook for our Customized version of UCI's [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

For more information on the underlying dataset, see its [documentation](UCI%20HAR%20Dataset/README.txt).

The first set is a tidy version of the data, joining the test/train sets, unique identifiers added, and with better column names.

The second set takes the means of all measurement columns in the first, grouped by activityname and subjectid.


# Set 1

| Field | Name | Description |
| ----- | ---- | ----------- |
| 1 | observationid | unique identifier for the observation|
| 2 | originalset | the set from which this observation came.  possible values are _train_ and _test_ |
| 3 | activityname | the name of the activity the subject was performing while their Samsung Galaxy S2 was strapped to them |
| 4 | subjectid | the unique identifier of the subject |
| 5 | timebodyaccelerometerxmean | mean of the X component of the body signal from the accelerometer (time domain) |
| 6 | timebodyaccelerometerymean | mean of the Y component of the body signal from the accelerometer (time domain)  |
| 7 | timebodyaccelerometerzmean | mean of the Z component of the body signal from the accelerometer (time domain)  |
| 8 | timegravityaccelerationxmean | mean of the X component of the gravity signal from the accelerometer (time domain) |
| 9 | timegravityaccelerationymean | mean of the Y component of the gravity signal from the accelerometer (time domain)  |
| 10 | timegravityaccelerationzmean | mean of the Z component of the gravity signal from the accelerometer (time domain) |
| 11 | timebodyaccelerometerjerkxmean | mean of the X component of the body's jerk signal from the accelerometer (time domain) |
| 12| timebodyaccelerometerjerkymean | mean of the Y component of the body's jerk signal from the accelerometer (time domain) |
| 13 | timebodyaccelerometerjerkzmean | mean of the Z component of the body's jerk signal from the accelerometer (time domain) |
| 14 | timebodygyroscopexmean | mean of the X component of the body signal from the gyroscope (time domain) |
| 15 | timebodygyroscopeymean | mean of the Y component of the body signal from the gyroscope (time domain) |
| 16 | timebodygyroscopezmean | mean of the Z component of the body signal from the gyroscope (time domain) |
| 17 | timebodygyroscopejerkxmean | mean of the X component of the body's jerk signal from the gyroscope (time domain) |
| 18 | timebodygyroscopejerkymean | mean of the Y component of the body's jerk signal from the gyroscope (time domain) |
| 19 | timebodygyroscopejerkzmean | mean of the Z component of the body's jerk signal from the gyroscope (time domain) |
| 20 | fftbodyaccelerometerxmean | mean of the X component of the body signal from the accelerometer (frequency domain) |
| 21 | fftbodyaccelerometerymean | mean of the Y component of the body signal from the accelerometer (frequency domain) |
| 22 | fftbodyaccelerometerzmean | mean of the Z component of the body signal from the accelerometer (frequency domain) |
| 23 | fftbodyaccelerometerjerkxmean | mean of the X component of the body's jerk signal from the accelerometer (frequency domain) |
| 24 | fftbodyaccelerometerjerkymean | mean of the Y component of the body's jerk signal from the accelerometer (frequency domain) |
| 25 | fftbodyaccelerometerjerkzmean | mean of the Z component of the body's jerk signal from the accelerometer (frequency domain) |
| 26 | fftbodygyroscopexmean | mean of the X component of the body's jerk signal from the gyroscope (frequency domain) |
| 27 | fftbodygyroscopeymean | mean of the Y component of the body's jerk signal from the gyroscope (frequency domain) |
| 28 | fftbodygyroscopezmean | mean of the Z component of the body's jerk signal from the gyroscope (frequency domain) |
| 29 | timebodyaccelerometerxstd | standard deviation of the X component of the body signal from the accelerometer (time domain) |
| 30 | timebodyaccelerometerystd | standard deviation of the Y component of the body signal from the accelerometer (time domain) |
| 31 | timebodyaccelerometerzstd | standard deviation of the Z component of the body signal from the accelerometer (time domain) |
| 32 | timegravityaccelerationxstd | standard deviation of the X component of the gravity signal from the accelerometer (time domain) |
| 33 | timegravityaccelerationystd | standard deviation of the Y component of the gravity signal from the accelerometer (time domain) |
| 34 | timegravityaccelerationzstd | standard deviation of the Z component of the gravity signal from the accelerometer (time domain) |
| 35 | timebodyaccelerometerjerkxstd | standard deviation of the X component of the body's jerk signal from the accelerometer (time domain) |
| 36 | timebodyaccelerometerjerkystd | standard deviation of the Y component of the body's jerk signal from the accelerometer (time domain) |
| 37 | timebodyaccelerometerjerkzstd | standard deviation of the Z component of the body's jerk signal from the accelerometer (time domain) |
| 38 | timebodygyroscopexstd | standard deviation of the X component of the body signal from the gyroscope (time domain) |
| 39 | timebodygyroscopeystd | standard deviation of the Y component of the body signal from the gyroscope (time domain) |
| 40 | timebodygyroscopezstd | standard deviation of the Z component of the body signal from the gyroscope (time domain) |
| 41 | timebodygyroscopejerkxstd | standard deviation of the X component of the body's jerk signal from the gyroscope (time domain) |
| 42 | timebodygyroscopejerkystd | standard deviation of the Y component of the body's jerk signal from the gyroscope (time domain) |
| 43 | timebodygyroscopejerkzstd | standard deviation of the Z component of the body's jerk signal from the gyroscope (time domain) |
| 44 | fftbodyaccelerometerxstd | standard deviation of the X component of the body signal from the accelerometer (frequency domain) |
| 45 | fftbodyaccelerometerystd | standard deviation of the X component of the body signal from the accelerometer (frequency domain) |
| 46 | fftbodyaccelerometerzstd | standard deviation of the Z component of the body signal from the accelerometer (frequency domain) |
| 47 | fftbodyaccelerometerjerkxstd | standard deviation of the X component of the body's jerk signal from the accelerometer (frequency domain) |
| 48 | fftbodyaccelerometerjerkystd | standard deviation of the Y component of the body's jerk signal from the accelerometer (frequency domain) |
| 49 | fftbodyaccelerometerjerkzstd | standard deviation of the Z component of the body's jerk signal from the accelerometer (frequency domain) |
| 50 | fftbodygyroscopexstd | standard deviation of the X component of the body's jerk signal from the gyroscope (frequency domain) |
| 51 | fftbodygyroscopeystd | standard deviation of the Y component of the body's jerk signal from the gyroscope (frequency domain) |
| 52 | fftbodygyroscopezstd | standard deviation of the Z component of the body's jerk signal from the gyroscope (frequency domain) |

# Set 2

| Field | Name | Description |
| ----- | ---- | ----------- |
| 1 | activityname | the name of the activity the subject was performing while their Samsung Galaxy S2 was strapped to them |
| 2 | subjectid | the unique identifier of the subject |
| 3 | timebodyaccelerometerxmean | _the mean of_ the mean of the X component of the body signal from the accelerometer (time domain) for this activityname/subjectid |
| 4 | timebodyaccelerometerymean | _the mean of_ the mean of the Y component of the body signal from the accelerometer (time domain)  for this activityname/subjectid  |
| 5 | timebodyaccelerometerzmean | _the mean of_ the mean of the Z component of the body signal from the accelerometer (time domain)  for this activityname/subjectid  |
| 6 | timegravityaccelerationxmean | _the mean of_ the mean of the X component of the gravity signal from the accelerometer (time domain)  for this activityname/subjectid |
| 7 | timegravityaccelerationymean | _the mean of_ the mean of the Y component of the gravity signal from the accelerometer (time domain)  for this activityname/subjectid  |
| 8 | timegravityaccelerationzmean | _the mean of_ the mean of the Z component of the gravity signal from the accelerometer (time domain) for this activityname/subjectid  |
| 9 | timebodyaccelerometerjerkxmean | _the mean of_ the mean of the X component of the body's jerk signal from the accelerometer (time domain) for this activityname/subjectid  |
| 10| timebodyaccelerometerjerkymean | _the mean of_ the mean of the Y component of the body's jerk signal from the accelerometer (time domain)  for this activityname/subjectid |
| 11 | timebodyaccelerometerjerkzmean | _the mean of_ the mean of the Z component of the body's jerk signal from the accelerometer (time domain)  for this activityname/subjectid |
| 12 | timebodygyroscopexmean | _the mean of_ the mean of the X component of the body signal from the gyroscope (time domain)  for this activityname/subjectid |
| 13 | timebodygyroscopeymean | _the mean of_ the mean of the Y component of the body signal from the gyroscope (time domain)  for this activityname/subjectid |
| 14 | timebodygyroscopezmean | _the mean of_ the mean of the Z component of the body signal from the gyroscope (time domain)  for this activityname/subjectid |
| 15 | timebodygyroscopejerkxmean | _the mean of_ the mean of the X component of the body's jerk signal from the gyroscope (time domain)  for this activityname/subjectid |
| 16 | timebodygyroscopejerkymean | _the mean of_ the mean of the Y component of the body's jerk signal from the gyroscope (time domain)  for this activityname/subjectid |
| 17 | timebodygyroscopejerkzmean | _the mean of_ the mean of the Z component of the body's jerk signal from the gyroscope (time domain)  for this activityname/subjectid |
| 18 | fftbodyaccelerometerxmean | _the mean of_ the mean of the X component of the body signal from the accelerometer (frequency domain)  for this activityname/subjectid |
| 19 | fftbodyaccelerometerymean | _the mean of_ the mean of the Y component of the body signal from the accelerometer (frequency domain)  for this activityname/subjectid |
| 20 | fftbodyaccelerometerzmean | _the mean of_ the mean of the Z component of the body signal from the accelerometer (frequency domain)  for this activityname/subjectid |
| 21 | fftbodyaccelerometerjerkxmean | _the mean of_ the mean of the X component of the body's jerk signal from the accelerometer (frequency domain)  for this activityname/subjectid |
| 22 | fftbodyaccelerometerjerkymean | _the mean of_ the mean of the Y component of the body's jerk signal from the accelerometer (frequency domain)  for this activityname/subjectid |
| 23 | fftbodyaccelerometerjerkzmean | _the mean of_ the mean of the Z component of the body's jerk signal from the accelerometer (frequency domain) for this activityname/subjectid  |
| 24 | fftbodygyroscopexmean | _the mean of_ the mean of the X component of the body's jerk signal from the gyroscope (frequency domain)  for this activityname/subjectid |
| 25 | fftbodygyroscopeymean | _the mean of_ the mean of the Y component of the body's jerk signal from the gyroscope (frequency domain)  for this activityname/subjectid |
| 26 | fftbodygyroscopezmean | _the mean of_ the mean of the Z component of the body's jerk signal from the gyroscope (frequency domain) for this activityname/subjectid  |
| 27 | timebodyaccelerometerxstd | _the mean of_ the standard deviation of the X component of the body signal from the accelerometer (time domain)  for this activityname/subjectid |
| 28 | timebodyaccelerometerystd | _the mean of_ the standard deviation of the Y component of the body signal from the accelerometer (time domain)  for this activityname/subjectid |
| 29 | timebodyaccelerometerzstd | _the mean of_ the standard deviation of the Z component of the body signal from the accelerometer (time domain) for this activityname/subjectid  |
| 30 | timegravityaccelerationxstd | _the mean of_ the standard deviation of the X component of the gravity signal from the accelerometer (time domain) for this activityname/subjectid  |
| 31 | timegravityaccelerationystd | _the mean of_ the standard deviation of the Y component of the gravity signal from the accelerometer (time domain) for this activityname/subjectid  |
| 32 | timegravityaccelerationzstd | _the mean of_ the standard deviation of the Z component of the gravity signal from the accelerometer (time domain)  for this activityname/subjectid |
| 33 | timebodyaccelerometerjerkxstd | _the mean of_ the standard deviation of the X component of the body's jerk signal from the accelerometer (time domain)  for this activityname/subjectid |
| 34 | timebodyaccelerometerjerkystd | _the mean of_ the standard deviation of the Y component of the body's jerk signal from the accelerometer (time domain)  for this activityname/subjectid |
| 35 | timebodyaccelerometerjerkzstd | _the mean of_ the standard deviation of the Z component of the body's jerk signal from the accelerometer (time domain)  for this activityname/subjectid |
| 36 | timebodygyroscopexstd | _the mean of_ the standard deviation of the X component of the body signal from the gyroscope (time domain)  for this activityname/subjectid |
| 37 | timebodygyroscopeystd | _the mean of_ the standard deviation of the Y component of the body signal from the gyroscope (time domain)  for this activityname/subjectid |
| 38 | timebodygyroscopezstd | _the mean of_ the standard deviation of the Z component of the body signal from the gyroscope (time domain)  for this activityname/subjectid |
| 39 | timebodygyroscopejerkxstd | _the mean of_ the standard deviation of the X component of the body's jerk signal from the gyroscope (time domain)  for this activityname/subjectid |
| 40 | timebodygyroscopejerkystd | _the mean of_ the standard deviation of the Y component of the body's jerk signal from the gyroscope (time domain)  for this activityname/subjectid |
| 41 | timebodygyroscopejerkzstd | _the mean of_ the standard deviation of the Z component of the body's jerk signal from the gyroscope (time domain)  for this activityname/subjectid |
| 42 | fftbodyaccelerometerxstd | _the mean of_ the standard deviation of the X component of the body signal from the accelerometer (frequency domain)  for this activityname/subjectid |
| 43 | fftbodyaccelerometerystd | _the mean of_ the standard deviation of the X component of the body signal from the accelerometer (frequency domain)  for this activityname/subjectid |
| 44 | fftbodyaccelerometerzstd | _the mean of_ the standard deviation of the Z component of the body signal from the accelerometer (frequency domain)  for this activityname/subjectid |
| 45 | fftbodyaccelerometerjerkxstd | _the mean of_ the standard deviation of the X component of the body's jerk signal from the accelerometer (frequency domain)  for this activityname/subjectid |
| 46 | fftbodyaccelerometerjerkystd | _the mean of_ the standard deviation of the Y component of the body's jerk signal from the accelerometer (frequency domain)  for this activityname/subjectid |
| 47 | fftbodyaccelerometerjerkzstd | _the mean of_ the standard deviation of the Z component of the body's jerk signal from the accelerometer (frequency domain)  for this activityname/subjectid |
| 48 | fftbodygyroscopexstd | _the mean of_ the standard deviation of the X component of the body's jerk signal from the gyroscope (frequency domain)  for this activityname/subjectid |
| 49 | fftbodygyroscopeystd | _the mean of_ the standard deviation of the Y component of the body's jerk signal from the gyroscope (frequency domain)  for this activityname/subjectid |
| 50 | fftbodygyroscopezstd | _the mean of_ the standard deviation of the Z component of the body's jerk signal from the gyroscope (frequency domain)  for this activityname/subjectid |

