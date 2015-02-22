# The Codebook
### What the script does
1. Installs/updates the dplyr package and loads it.

2. Creates a character vector containing the feature variable names.

3. Creates a data frame containg the x_test data, i.e., the primary data table, with the features as the column names.

4. Creates vectors containing the subject and activity values associated with the test data.

5. Creates a vector containing the value 'test' to identify that these are test values. This will be in the type column.

6. Appends the subject, activity values, and type column to the primary data frame. Edits column names to ensure they are descriptive.

7. Repeats steps 3 through 6 but with train data. This means the type column contains the value 'train'.

8. Combines these two data frames to create one large data set containing the training and test datasets.

9. Creates a vector to identify which features contain the terms mean or std to identify the mean and standard deviation columns. Does not include mean frequencies as these are not means per se, but frequencies of means.

10. Edits large data set so it only has mean and standard deviation measurements.

11. Extracts the activities label information to create a lookup.

12. Renames the activity values in the large data set so that they are activity labels.

13. Creates a new data set by grouping by subject and activity and calculating the means of all columns except Type. Type is not relevant for this final data set.

14. Writes new data set to a file, and specifies that rows do not have names.

###Summary
We merged the train and test data, and appended activities and subjects. We then extracted the mean and standard deviation measures, and calculated the means of these columns for each activity and subject pair.

###General information about data
According to the publishers of the original data, these experiments were carried out on 30 volunteers aging between 19 and 48 years. These subjects are identified in the column 'subject'. Measurements were taken using the embedded acccelerometer and gyroscope of their smartphone while they did six activities. These activities are identified in the column 'activity'.

The other columns are means of the standard deviation and mean columns of the original measuremen
ts. **The original measurements are normalized values ranging from -1 to 1 of time domain signals and frequency domain signals. Since they are normalized they have no units.** A number of filters were applied to remove noise.

###The variables
1. **subject**:
      Factors
      1 through 30
      30 volunteers aged between 19 and 48 years old.

2. **activity**:
      Factors
      WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
      Six activities

3. **tBodyAcc-mean()-X**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body accelerometer time domain signal in the X direction

4. **tBodyAcc-mean()-Y**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body accelerometer time domain signal in the Y direction

5. **tBodyAcc-mean()-Z**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body accelerometer time domain signal in the Z direction

6. **tBodyAcc-std()-X**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body accelerometer time domain signal in the X direction

7. **tBodyAcc-std()-Y**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body accelerometer time domain signal in the Y direction

8. **tBodyAcc-std()-Z**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body accelerometer time domain signal in the Z direction

9. **tGravityAcc-mean()-X**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of gravity accelerometer time domain signal in the X direction

10. **tGravityAcc-mean()-Y**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of gravity accelerometer time domain signal in the Y direction

11. **tGravityAcc-mean()-Z**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of gravity accelerometer time domain signal in the Z direction

12. **tGravityAcc-std()-X**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of gravity accelerometer time domain signal in the X direction

13. **tGravityAcc-std()-Y**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of gravity accelerometer time domain signal in the Y direction

14. **tGravityAcc-std()-Z**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of gravity accelerometer time domain signal in the Z direction

15. **tBodyAccJerk-mean()-X**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of the body accelerometer jerk time domain signal in the X direction

16. **tBodyAccJerk-mean()-Y**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of the body accelerometer jerk time domain signal in the Y direction

17. **tBodyAccJerk-mean()-Z**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of the body accelerometer jerk time domain signal in the Z direction

18. **tBodyAccJerk-std()-X**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of the body accelerometer jerk time domain signal in the X direction

19. **tBodyAccJerk-std()-Y**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of the body accelerometer jerk time domain signal in the Y direction

20. **tBodyAccJerk-std()-Z**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of the body accelerometer jerk time domain signal in the Z direction

21. **tBodyGyro-mean()-X**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body gyroscope time domain signal in the X direction

22. **tBodyGyro-mean()-Y**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body gyroscope time domain signal in the Y direction

23. **tBodyGyro-mean()-Z**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body gyroscope time domain signal in the Z direction

24. **tBodyGyro-std()-X**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body gyroscope time domain signal in the X direction

25. **tBodyGyro-std()-Y**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body gyroscope time domain signal in the Y direction

26. **tBodyGyro-std()-Z**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body gyroscope time domain signal in the Z direction

27. **tBodyGyroJerk-mean()-X**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body gyroscope time domain signal in the X direction

28. **tBodyGyroJerk-mean()-Y**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body gyroscope time domain signal in the Y direction

29. **tBodyGyroJerk-mean()-Z**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body gyroscope time domain signal in the Z direction

30. **tBodyGyroJerk-std()-X**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body gyroscope jerk time domain signal in the X directioin

31. **tBodyGyroJerk-std()-Y**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body gyroscope jerk time domain signal in the Y directioin

32. **tBodyGyroJerk-std()-Z**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body gyroscope jerk time domain signal in the Z directioin

33. **tBodyAccMag-mean()**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body accelerometer magnitude time domain signal

34. **tBodyAccMag-std()**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body accelerometer magnitude time domain signal

35. **tGravityAccMag-mean()**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of gravity accelerometer magnitude time domain signal

36. **tGravityAccMag-std()**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of gravity accelerometer magnitude time domain signal

37. **tBodyAccJerkMag-mean()**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body accelerometer jerk magnitude time domain signal

38. **tBodyAccJerkMag-std()**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body accelerometer jerk magnitude time domain signal

39. **tBodyGyroMag-mean()**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body gyroscope magnitude time domain signal

40. **tBodyGyroMag-std()**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body gyroscope magnitude time domain signal

41. **tBodyGyroJerkMag-mean()**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body gyroscope magnitude jerk time domain signal

42. **tBodyGyroJerkMag-std()**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body gyroscope magnitude jerk time domain signal

43. **fBodyAcc-mean()-X**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body accelerometer frequency domain signal in the X direction

44. **fBodyAcc-mean()-Y**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body accelerometer frequency domain signal in the Y direction

45. **fBodyAcc-mean()-Z**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body accelerometer frequency domain signal in the Z direction

46. **fBodyAcc-std()-X**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body accelerometer frequency domain signal in the X direction

47. **fBodyAcc-std()-Y**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body accelerometer frequency domain signal in the Y direction

48. **fBodyAcc-std()-Z**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body accelerometer frequency domain signal in the Z direction

49. **fBodyAccJerk-mean()-X**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body accelerometer jerk frequency domain signal in the X direction

50. **fBodyAccJerk-mean()-Y**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body accelerometer jerk frequency domain signal in the Y direction

51. **fBodyAccJerk-mean()-Z**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body accelerometer jerk frequency domain signal in the Z direction

52. **fBodyAccJerk-std()-X**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body accelerometer jerk frequency domain signal in the X direction

53. **fBodyAccJerk-std()-Y**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body accelerometer jerk frequency domain signal in the Y direction

54. **fBodyAccJerk-std()-Z**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body accelerometer jerk frequency domain signal in the Z direction

55. **fBodyGyro-mean()-X**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body gyroscope frequency domain signal in the X direction

56. **fBodyGyro-mean()-Y**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body gyroscope frequency domain signal in the Y direction

57. **fBodyGyro-mean()-Z**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body gyroscope frequency domain signal in the Z direction

58. **fBodyGyro-std()-X**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body gyroscope frequency domain signal in the X direction

59. **fBodyGyro-std()-Y**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body gyroscope frequency domain signal in the Y direction

60. **fBodyGyro-std()-Z**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body gyroscope frequency domain signal in the Z direction

61. **fBodyAccMag-mean()**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body accelerometer magnitude frequency domain signal

62. **fBodyAccMag-std()**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body accelerometer magnitude frequency domain signal

63. **fBodyBodyAccJerkMag-mean()**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body accelerometer jerk magnitude frequency domain signal

64. **fBodyBodyAccJerkMag-std()**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body accelerometer jerk magnitude frequency domain signal

65. **fBodyBodyGyroMag-mean()**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body gyroscope magnitude frequency domain signal

66. **fBodyBodyGyroMag-std()**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body gyroscope magnitude frequency domain signal

67. **fBodyBodyGyroJerkMag-mean()**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the mean of body gyroscope jerk magnitude frequency domain signal

68. **fBodyBodyGyroJerkMag-std()**:
      Float
      Normalized float ranging from -1 to 1
      Mean of the standard deviation of body gyroscope jerk magnitude frequency domain signal



