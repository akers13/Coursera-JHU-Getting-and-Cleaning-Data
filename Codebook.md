---
title: "Getting and Cleaning Data Codebook"
author: Ari Kerstein 
date: March 27, 2016

---
# **Project Description**
Data from the UC Irvine Machine Learning Repository was collected from http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. The data contains accelerometer readings from a Samsung smartphone obtained by subjects performing routine daily activities. This particular project concerned creating a tidy datafile from a subset of the accelerometer data for all measured variables on which a mean or standard deviation calculation was performed. The average value of these variables was then calculated for each of 30 subjects in the study and the six routine activities they performed. 

# **Study design and data processing**

## Collection of the raw data
Raw data was obtained from a .zip file at the following link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The files were downloaded and extracted from the .zip using R. For this project, only data from the "UCI HAR Dataset","train", and "test" folders were used, while the "inertial signals" folder was not incorporated in the work. 

# **Creating the tidy datafile**

## Guide to create the tidy data file
Download the .zip file and extract its contents using R. Label the variables with their descriptions. Merge the test and training data. Label the activities with their corresponding descriptions. Extract variables relating to mean and standard deviation measurements. Summarize these variables by their average value for each subject and each activity. 

## Cleaning of the data
Download the .zip file and extract its contents using R. Read the data into R such that the values of the observed variables are labeled with the appropriate identifier. Combine the data on the test and training runs of the study for subject identifier, activity, and the value of the measured variables. Replace the number values in the activity data with the corresponding names of those activities. Append first the activity data and then the subject data to the data on the values of the measured variables. From this table, extract the variables for mean and standard deviation calculations of the data. Manipulate this new table to show the average of the mean and standard deviation calculations by subject identifier and activity, for all subjects and activities.See the README file for step-by-step R code of this process.

# **Description of the variables in the tiny_data.txt file**

## Dimensions of the data
180 0bservations of 88 variables 

## Summary of the data
Data is available for 30 subjects, 6 activities each, with the average of 86 measures relating to the mean and standard deviation of the values in the initial accelerometer readings. The original data had been normalized to the range [-1,1], which has carried through the average calculations present here. 

## Variables present in the dataset
 [1] "Subject"                              "Activity"                            
 [3] "tBodyAcc.mean...X"                    "tBodyAcc.mean...Y"                   
 [5] "tBodyAcc.mean...Z"                    "tGravityAcc.mean...X"                
 [7] "tGravityAcc.mean...Y"                 "tGravityAcc.mean...Z"                
 [9] "tBodyAccJerk.mean...X"                "tBodyAccJerk.mean...Y"               
[11] "tBodyAccJerk.mean...Z"                "tBodyGyro.mean...X"                  
[13] "tBodyGyro.mean...Y"                   "tBodyGyro.mean...Z"                  
[15] "tBodyGyroJerk.mean...X"               "tBodyGyroJerk.mean...Y"              
[17] "tBodyGyroJerk.mean...Z"               "tBodyAccMag.mean.."                  
[19] "tGravityAccMag.mean.."                "tBodyAccJerkMag.mean.."              
[21] "tBodyGyroMag.mean.."                  "tBodyGyroJerkMag.mean.."             
[23] "fBodyAcc.mean...X"                    "fBodyAcc.mean...Y"                   
[25] "fBodyAcc.mean...Z"                    "fBodyAcc.meanFreq...X"               
[27] "fBodyAcc.meanFreq...Y"                "fBodyAcc.meanFreq...Z"               
[29] "fBodyAccJerk.mean...X"                "fBodyAccJerk.mean...Y"               
[31] "fBodyAccJerk.mean...Z"                "fBodyAccJerk.meanFreq...X"           
[33] "fBodyAccJerk.meanFreq...Y"            "fBodyAccJerk.meanFreq...Z"           
[35] "fBodyGyro.mean...X"                   "fBodyGyro.mean...Y"                  
[37] "fBodyGyro.mean...Z"                   "fBodyGyro.meanFreq...X"              
[39] "fBodyGyro.meanFreq...Y"               "fBodyGyro.meanFreq...Z"              
[41] "fBodyAccMag.mean.."                   "fBodyAccMag.meanFreq.."              
[43] "fBodyBodyAccJerkMag.mean.."           "fBodyBodyAccJerkMag.meanFreq.."      
[45] "fBodyBodyGyroMag.mean.."              "fBodyBodyGyroMag.meanFreq.."         
[47] "fBodyBodyGyroJerkMag.mean.."          "fBodyBodyGyroJerkMag.meanFreq.."     
[49] "angle.tBodyAccMean.gravity."          "angle.tBodyAccJerkMean..gravityMean."
[51] "angle.tBodyGyroMean.gravityMean."     "angle.tBodyGyroJerkMean.gravityMean."
[53] "angle.X.gravityMean."                 "angle.Y.gravityMean."                
[55] "angle.Z.gravityMean."                 "tBodyAcc.std...X"                    
[57] "tBodyAcc.std...Y"                     "tBodyAcc.std...Z"                    
[59] "tGravityAcc.std...X"                  "tGravityAcc.std...Y"                 
[61] "tGravityAcc.std...Z"                  "tBodyAccJerk.std...X"                
[63] "tBodyAccJerk.std...Y"                 "tBodyAccJerk.std...Z"                
[65] "tBodyGyro.std...X"                    "tBodyGyro.std...Y"                   
[67] "tBodyGyro.std...Z"                    "tBodyGyroJerk.std...X"               
[69] "tBodyGyroJerk.std...Y"                "tBodyGyroJerk.std...Z"               
[71] "tBodyAccMag.std.."                    "tGravityAccMag.std.."                
[73] "tBodyAccJerkMag.std.."                "tBodyGyroMag.std.."                  
[75] "tBodyGyroJerkMag.std.."               "fBodyAcc.std...X"                    
[77] "fBodyAcc.std...Y"                     "fBodyAcc.std...Z"                    
[79] "fBodyAccJerk.std...X"                 "fBodyAccJerk.std...Y"                
[81] "fBodyAccJerk.std...Z"                 "fBodyGyro.std...X"                   
[83] "fBodyGyro.std...Y"                    "fBodyGyro.std...Z"                   
[85] "fBodyAccMag.std.."                    "fBodyBodyAccJerkMag.std.."           
[87] "fBodyBodyGyroMag.std.."               "fBodyBodyGyroJerkMag.std..

## Summary of Variables
$ Subject                             : int  1 1 1 1 1 1 2 2 2 2 ...
 $ Activity                            : Factor w/ 6 levels "LAYING","SITTING",..: 1 2 3 4 5 6 1 2 3 4 ...
 $ tBodyAcc.mean...X                   : num  0.222 0.261 0.279 0.277 0.289 ...
 $ tBodyAcc.mean...Y                   : num  -0.04051 -0.00131 -0.01614 -0.01738 -0.00992 ...
 $ tBodyAcc.mean...Z                   : num  -0.113 -0.105 -0.111 -0.111 -0.108 ...
 $ tGravityAcc.mean...X                : num  -0.249 0.832 0.943 0.935 0.932 ...
 $ tGravityAcc.mean...Y                : num  0.706 0.204 -0.273 -0.282 -0.267 ...
 $ tGravityAcc.mean...Z                : num  0.4458 0.332 0.0135 -0.0681 -0.0621 ...
 $ tBodyAccJerk.mean...X               : num  0.0811 0.0775 0.0754 0.074 0.0542 ...
 $ tBodyAccJerk.mean...Y               : num  0.003838 -0.000619 0.007976 0.028272 0.02965 ...
 $ tBodyAccJerk.mean...Z               : num  0.01083 -0.00337 -0.00369 -0.00417 -0.01097 ...
 $ tBodyGyro.mean...X                  : num  -0.0166 -0.0454 -0.024 -0.0418 -0.0351 ...
 $ tBodyGyro.mean...Y                  : num  -0.0645 -0.0919 -0.0594 -0.0695 -0.0909 ...
 $ tBodyGyro.mean...Z                  : num  0.1487 0.0629 0.0748 0.0849 0.0901 ...
 $ tBodyGyroJerk.mean...X              : num  -0.1073 -0.0937 -0.0996 -0.09 -0.074 ...
 $ tBodyGyroJerk.mean...Y              : num  -0.0415 -0.0402 -0.0441 -0.0398 -0.044 ...
 $ tBodyGyroJerk.mean...Z              : num  -0.0741 -0.0467 -0.049 -0.0461 -0.027 ...
 $ tBodyAccMag.mean..                  : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
 $ tGravityAccMag.mean..               : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
 $ tBodyAccJerkMag.mean..              : num  -0.9544 -0.9874 -0.9924 -0.1414 -0.0894 ...
 $ tBodyGyroMag.mean..                 : num  -0.8748 -0.9309 -0.9765 -0.161 -0.0757 ...
 $ tBodyGyroJerkMag.mean..             : num  -0.963 -0.992 -0.995 -0.299 -0.295 ...
 $ fBodyAcc.mean...X                   : num  -0.9391 -0.9796 -0.9952 -0.2028 0.0382 ...
 $ fBodyAcc.mean...Y                   : num  -0.86707 -0.94408 -0.97707 0.08971 0.00155 ...
 $ fBodyAcc.mean...Z                   : num  -0.883 -0.959 -0.985 -0.332 -0.226 ...
 $ fBodyAcc.meanFreq...X               : num  -0.1588 -0.0495 0.0865 -0.2075 -0.3074 ...
 $ fBodyAcc.meanFreq...Y               : num  0.0975 0.0759 0.1175 0.1131 0.0632 ...
 $ fBodyAcc.meanFreq...Z               : num  0.0894 0.2388 0.2449 0.0497 0.2943 ...
 $ fBodyAccJerk.mean...X               : num  -0.9571 -0.9866 -0.9946 -0.1705 -0.0277 ...
 $ fBodyAccJerk.mean...Y               : num  -0.9225 -0.9816 -0.9854 -0.0352 -0.1287 ...
 $ fBodyAccJerk.mean...Z               : num  -0.948 -0.986 -0.991 -0.469 -0.288 ...
 $ fBodyAccJerk.meanFreq...X           : num  0.132 0.257 0.314 -0.209 -0.253 ...
 $ fBodyAccJerk.meanFreq...Y           : num  0.0245 0.0475 0.0392 -0.3862 -0.3376 ...
 $ fBodyAccJerk.meanFreq...Z           : num  0.02439 0.09239 0.13858 -0.18553 0.00937 ...
 $ fBodyGyro.mean...X                  : num  -0.85 -0.976 -0.986 -0.339 -0.352 ...
 $ fBodyGyro.mean...Y                  : num  -0.9522 -0.9758 -0.989 -0.1031 -0.0557 ...
 $ fBodyGyro.mean...Z                  : num  -0.9093 -0.9513 -0.9808 -0.2559 -0.0319 ...
 $ fBodyGyro.meanFreq...X              : num  -0.00355 0.18915 -0.12029 0.01478 -0.10045 ...
 $ fBodyGyro.meanFreq...Y              : num  -0.0915 0.0631 -0.0447 -0.0658 0.0826 ...
 $ fBodyGyro.meanFreq...Z              : num  0.010458 -0.029784 0.100608 0.000773 -0.075676 ...
 $ fBodyAccMag.mean..                  : num  -0.8618 -0.9478 -0.9854 -0.1286 0.0966 ...
 $ fBodyAccMag.meanFreq..              : num  0.0864 0.2367 0.2846 0.1906 0.1192 ...
 $ fBodyBodyAccJerkMag.mean..          : num  -0.9333 -0.9853 -0.9925 -0.0571 0.0262 ...
 $ fBodyBodyAccJerkMag.meanFreq..      : num  0.2664 0.3519 0.4222 0.0938 0.0765 ...
 $ fBodyBodyGyroMag.mean..             : num  -0.862 -0.958 -0.985 -0.199 -0.186 ...
 $ fBodyBodyGyroMag.meanFreq..         : num  -0.139775 -0.000262 -0.028606 0.268844 0.349614 ...
 $ fBodyBodyGyroJerkMag.mean..         : num  -0.942 -0.99 -0.995 -0.319 -0.282 ...
 $ fBodyBodyGyroJerkMag.meanFreq..     : num  0.176 0.185 0.334 0.191 0.19 ...
 $ angle.tBodyAccMean.gravity.         : num  0.021366 0.027442 -0.000222 0.060454 -0.002695 ...
 $ angle.tBodyAccJerkMean..gravityMean.: num  0.00306 0.02971 0.02196 -0.00793 0.08993 ...
 $ angle.tBodyGyroMean.gravityMean.    : num  -0.00167 0.0677 -0.03379 0.01306 0.06334 ...
 $ angle.tBodyGyroJerkMean.gravityMean.: num  0.0844 -0.0649 -0.0279 -0.0187 -0.04 ...
 $ angle.X.gravityMean.                : num  0.427 -0.591 -0.743 -0.729 -0.744 ...
 $ angle.Y.gravityMean.                : num  -0.5203 -0.0605 0.2702 0.277 0.2672 ...
 $ angle.Z.gravityMean.                : num  -0.3524 -0.218 0.0123 0.0689 0.065 ...
 $ tBodyAcc.std...X                    : num  -0.928 -0.977 -0.996 -0.284 0.03 ...
 $ tBodyAcc.std...Y                    : num  -0.8368 -0.9226 -0.9732 0.1145 -0.0319 ...
 $ tBodyAcc.std...Z                    : num  -0.826 -0.94 -0.98 -0.26 -0.23 ...
 $ tGravityAcc.std...X                 : num  -0.897 -0.968 -0.994 -0.977 -0.951 ...
 $ tGravityAcc.std...Y                 : num  -0.908 -0.936 -0.981 -0.971 -0.937 ...
 $ tGravityAcc.std...Z                 : num  -0.852 -0.949 -0.976 -0.948 -0.896 ...
 $ tBodyAccJerk.std...X                : num  -0.9585 -0.9864 -0.9946 -0.1136 -0.0123 ...
 $ tBodyAccJerk.std...Y                : num  -0.924 -0.981 -0.986 0.067 -0.102 ...
 $ tBodyAccJerk.std...Z                : num  -0.955 -0.988 -0.992 -0.503 -0.346 ...
 $ tBodyGyro.std...X                   : num  -0.874 -0.977 -0.987 -0.474 -0.458 ...
 $ tBodyGyro.std...Y                   : num  -0.9511 -0.9665 -0.9877 -0.0546 -0.1263 ...
 $ tBodyGyro.std...Z                   : num  -0.908 -0.941 -0.981 -0.344 -0.125 ...
 $ tBodyGyroJerk.std...X               : num  -0.919 -0.992 -0.993 -0.207 -0.487 ...
 $ tBodyGyroJerk.std...Y               : num  -0.968 -0.99 -0.995 -0.304 -0.239 ...
 $ tBodyGyroJerk.std...Z               : num  -0.958 -0.988 -0.992 -0.404 -0.269 ...
 $ tBodyAccMag.std..                   : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
 $ tGravityAccMag.std..                : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
 $ tBodyAccJerkMag.std..               : num  -0.9282 -0.9841 -0.9931 -0.0745 -0.0258 ...
 $ tBodyGyroMag.std..                  : num  -0.819 -0.935 -0.979 -0.187 -0.226 ...
 $ tBodyGyroJerkMag.std..              : num  -0.936 -0.988 -0.995 -0.325 -0.307 ...
 $ fBodyAcc.std...X                    : num  -0.9244 -0.9764 -0.996 -0.3191 0.0243 ...
 $ fBodyAcc.std...Y                    : num  -0.834 -0.917 -0.972 0.056 -0.113 ...
 $ fBodyAcc.std...Z                    : num  -0.813 -0.934 -0.978 -0.28 -0.298 ...
 $ fBodyAccJerk.std...X                : num  -0.9642 -0.9875 -0.9951 -0.1336 -0.0863 ...
 $ fBodyAccJerk.std...Y                : num  -0.932 -0.983 -0.987 0.107 -0.135 ...
 $ fBodyAccJerk.std...Z                : num  -0.961 -0.988 -0.992 -0.535 -0.402 ...
 $ fBodyGyro.std...X                   : num  -0.882 -0.978 -0.987 -0.517 -0.495 ...
 $ fBodyGyro.std...Y                   : num  -0.9512 -0.9623 -0.9871 -0.0335 -0.1814 ...
 $ fBodyGyro.std...Z                   : num  -0.917 -0.944 -0.982 -0.437 -0.238 ...
 $ fBodyAccMag.std..                   : num  -0.798 -0.928 -0.982 -0.398 -0.187 ...
 $ fBodyBodyAccJerkMag.std..           : num  -0.922 -0.982 -0.993 -0.103 -0.104 ...
 $ fBodyBodyGyroMag.std..              : num  -0.824 -0.932 -0.978 -0.321 -0.398 ...
 $ fBodyBodyGyroJerkMag.std..          : num  -0.933 -0.987 -0.995 -0.382 -0.392 ...
 
# **Citation for the data used in this project**
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

## Note
This codebook was created using JorisSchut's template found at https://gist.github.com/JorisSchut/dbc1fc0402f28cad9b41