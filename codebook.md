## A code book that describes the variables, the data, and any transformations or work performed to clean up the data.
This project, part of the Coursera Getting and Cleaning Data course, makes use of the "Human Activity Recognition Using Smartphones Data Set" from the UCI Machine Learning Repository: a dataset built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors. 
The original dataset contains 10299 observations, each with 561 variables. The authors of the dataset provide this description:

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the vollunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment."
   http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The project entailed: 
Uploading the data into R
Merging the training and the test sets.
Extracting only the measurements on the mean and standard deviation for each measurement.
Using descriptive activity names to name the activities in the data set
Appropriately labeling the data set with descriptive variable names. 
Finally, creating a second, independent tidy data set with the average of each variable for each activity and each subject.

The resulting tidy data set contains 180 observations (6 activities x 30 participants) with 81 variables (the variables of the original data set involving the mean or standard deviation). Each observation includes the mean value of each variable for each activity and each subject. The first two variables of the tidy data set are simply the names of the activities and the participant identifiers. Other variables are as follows:
 [3] "TimeBodyAcceleration-mean()-X"                    
 [4] "TimeBodyAcceleration-mean()-Y"                    
 [5] "TimeBodyAcceleration-mean()-Z"                    
 [6] "TimeBodyAcceleration-std()-X"                     
 [7] "TimeBodyAcceleration-std()-Y"                     
 [8] "TimeBodyAcceleration-std()-Z"                     
 [9] "TimeGravityAcceleration-mean()-X"                 
[10] "TimeGravityAcceleration-mean()-Y"                 
[11] "TimeGravityAcceleration-mean()-Z"                 
[12] "TimeGravityAcceleration-std()-X"                  
[13] "TimeGravityAcceleration-std()-Y"                  
[14] "TimeGravityAcceleration-std()-Z"                  
[15] "TimeBodyAccelerationJerk-mean()-X"                
[16] "TimeBodyAccelerationJerk-mean()-Y"                
[17] "TimeBodyAccelerationJerk-mean()-Z"                
[18] "TimeBodyAccelerationJerk-std()-X"                 
[19] "TimeBodyAccelerationJerk-std()-Y"                 
[20] "TimeBodyAccelerationJerk-std()-Z"                 
[21] "TimeBodyGyro-mean()-X"                            
[22] "TimeBodyGyro-mean()-Y"                            
[23] "TimeBodyGyro-mean()-Z"                            
[24] "TimeBodyGyro-std()-X"                             
[25] "TimeBodyGyro-std()-Y"                             
[26] "TimeBodyGyro-std()-Z"                             
[27] "TimeBodyGyroJerk-mean()-X"                        
[28] "TimeBodyGyroJerk-mean()-Y"                        
[29] "TimeBodyGyroJerk-mean()-Z"                        
[30] "TimeBodyGyroJerk-std()-X"                         
[31] "TimeBodyGyroJerk-std()-Y"                         
[32] "TimeBodyGyroJerk-std()-Z"                         
[33] "TimeBodyAccelerationMagnitude-mean()"             
[34] "TimeBodyAccelerationMagnitude-std()"              
[35] "TimeGravityAccelerationMagnitude-mean()"          
[36] "TimeGravityAccelerationMagnitude-std()"           
[37] "TimeBodyAccelerationJerkMagnitude-mean()"         
[38] "TimeBodyAccelerationJerkMagnitude-std()"          
[39] "TimeBodyGyroMagnitude-mean()"                     
[40] "TimeBodyGyroMagnitude-std()"                      
[41] "TimeBodyGyroJerkMagnitude-mean()"                 
[42] "TimeBodyGyroJerkMagnitude-std()"                  
[43] "FrequencyBodyAcceleration-mean()-X"               
[44] "FrequencyBodyAcceleration-mean()-Y"               
[45] "FrequencyBodyAcceleration-mean()-Z"               
[46] "FrequencyBodyAcceleration-std()-X"                
[47] "FrequencyBodyAcceleration-std()-Y"                
[48] "FrequencyBodyAcceleration-std()-Z"                
[49] "FrequencyBodyAcceleration-meanFreq()-X"           
[50] "FrequencyBodyAcceleration-meanFreq()-Y"           
[51] "FrequencyBodyAcceleration-meanFreq()-Z"           
[52] "FrequencyBodyAccelerationJerk-mean()-X"           
[53] "FrequencyBodyAccelerationJerk-mean()-Y"           
[54] "FrequencyBodyAccelerationJerk-mean()-Z"           
[55] "FrequencyBodyAccelerationJerk-std()-X"            
[56] "FrequencyBodyAccelerationJerk-std()-Y"            
[57] "FrequencyBodyAccelerationJerk-std()-Z"            
[58] "FrequencyBodyAccelerationJerk-meanFreq()-X"       
[59] "FrequencyBodyAccelerationJerk-meanFreq()-Y"       
[60] "FrequencyBodyAccelerationJerk-meanFreq()-Z"       
[61] "FrequencyBodyGyro-mean()-X"                       
[62] "FrequencyBodyGyro-mean()-Y"                       
[63] "FrequencyBodyGyro-mean()-Z"                       
[64] "FrequencyBodyGyro-std()-X"                        
[65] "FrequencyBodyGyro-std()-Y"                        
[66] "FrequencyBodyGyro-std()-Z"                        
[67] "FrequencyBodyGyro-meanFreq()-X"                   
[68] "FrequencyBodyGyro-meanFreq()-Y"                   
[69] "FrequencyBodyGyro-meanFreq()-Z"                   
[70] "FrequencyBodyAccelerationMagnitude-mean()"        
[71] "FrequencyBodyAccelerationMagnitude-std()"         
[72] "FrequencyBodyAccelerationMagnitude-meanFreq()"    
[73] "FrequencyBodyAccelerationJerkMagnitude-mean()"    
[74] "FrequencyBodyAccelerationJerkMagnitude-std()"     
[75] "FrequencyBodyAccelerationJerkMagnitude-meanFreq()"
[76] "FrequencyBodyGyroMagnitude-mean()"                
[77] "FrequencyBodyGyroMagnitude-std()"                 
[78] "FrequencyBodyGyroMagnitude-meanFreq()"            
[79] "FrequencyBodyGyroJerkMagnitude-mean()"            
[80] "FrequencyBodyGyroJerkMagnitude-std()"             
[81] "FrequencyBodyGyroJerkMagnitude-meanFreq()"

I tried my best to remove any jargon from the variable names, so I hope that in these variable names in combination with the description of the original data set from the authors, which includes information about how the data was obtained and the units of measurement used, will be sufficient for understanding the meanings of the variables. To be entirely honest, for me the original authors did not provide enough information about the "jerk" signals. I assume these are measures of times when the gyroscope or accelerometer were suddenly pulled in a direction.
For details on the steps taken to create the tidy data set, see my readme file. Notes on the steps taken are also included in the run_analysis.R file itself.
