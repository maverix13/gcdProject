## Introduction

Reproduced from README provided with the dataset

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
- Tidy data set has been reduced from a 561 feature vector to contain on Mean and Standard Deviation features.

## Features

Partially reproduced from features_info provided with the dataset

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccelerometer.XYZ and timeGyroscope.XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometer.XYZ and timeGravityAccelerometer.XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk.XYZ and timeBodyGyroscopeJerk.XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccelerometerMagnitude, tGravityAccelerometerMagnitude, tBodyAccelerometerJerkMagnitude, tBodyGyroscopeMagnitude, tBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerometer.XYZ, frequencyBodyAccelerometerJerk.XYZ, frequencyBodyGyroscope.XYZ, frequencyBodyAccelerometerJerkMagnitude, frequencyBodyGyroMagnitude, frequencyBodyGyroscopeJerkMagnitude. 

These signals were used to estimate variables of the feature vector for each pattern:  
'.XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

Mean: Mean value
SD: Standard deviation

Feature list
Activity                                    
Subject                                     
timeBodyAccelerometer.Mean.X                
timeBodyAccelerometer.Mean.Y                
timeBodyAccelerometer.Mean.Z                
timeGravityAccelerometer.Mean.X             
timeGravityAccelerometer.Mean.Y             
timeGravityAccelerometer.Mean.Z             
timeBodyAccelerometerJerk.Mean.X            
timeBodyAccelerometerJerk.Mean.Y            
timeBodyAccelerometerJerk.Mean.Z            
timeBodyGyroscope.Mean.X                    
timeBodyGyroscope.Mean.Y                    
timeBodyGyroscope.Mean.Z                    
timeBodyGyroscopeJerk.Mean.X                
timeBodyGyroscopeJerk.Mean.Y                
timeBodyGyroscopeJerk.Mean.Z                
timeBodyAccelerometerMagnitude.Mean         
timeGravityAccelerometerMagnitude.Mean      
timeBodyAccelerometerJerkMagnitude.Mean     
timeBodyGyroscopeMagnitude.Mean             
timeBodyGyroscopeJerkMagnitude.Mean         
frequencyBodyAccelerometer.Mean.X           
frequencyBodyAccelerometer.Mean.Y           
frequencyBodyAccelerometer.Mean.Z           
frequencyBodyAccelerometerJerk.Mean.X       
frequencyBodyAccelerometerJerk.Mean.Y       
frequencyBodyAccelerometerJerk.Mean.Z       
frequencyBodyGyroscope.Mean.X               
frequencyBodyGyroscope.Mean.Y               
frequencyBodyGyroscope.Mean.Z               
frequencyBodyAccelerometerMagnitude.Mean    
frequencyBodyAccelerometerJerkMagnitude.Mean
frequencyBodyGyroscopeMagnitude.Mean        
frequencyBodyGyroscopeJerkMagnitude.Mean    
timeBodyAccelerometer.SD.X                  
timeBodyAccelerometer.SD.Y                  
timeBodyAccelerometer.SD.Z                  
timeGravityAccelerometer.SD.X               
timeGravityAccelerometer.SD.Y               
timeGravityAccelerometer.SD.Z               
timeBodyAccelerometerJerk.SD.X              
timeBodyAccelerometerJerk.SD.Y              
timeBodyAccelerometerJerk.SD.Z              
timeBodyGyroscope.SD.X                      
timeBodyGyroscope.SD.Y                      
timeBodyGyroscope.SD.Z                      
timeBodyGyroscopeJerk.SD.X                  
timeBodyGyroscopeJerk.SD.Y                  
timeBodyGyroscopeJerk.SD.Z                  
timeBodyAccelerometerMagnitude.SD           
timeGravityAccelerometerMagnitude.SD        
timeBodyAccelerometerJerkMagnitude.SD       
timeBodyGyroscopeMagnitude.SD               
timeBodyGyroscopeJerkMagnitude.SD           
frequencyBodyAccelerometer.SD.X             
frequencyBodyAccelerometer.SD.Y             
frequencyBodyAccelerometer.SD.Z             
frequencyBodyAccelerometerJerk.SD.X         
frequencyBodyAccelerometerJerk.SD.Y         
frequencyBodyAccelerometerJerk.SD.Z         
frequencyBodyGyroscope.SD.X                 
frequencyBodyGyroscope.SD.Y                 
frequencyBodyGyroscope.SD.Z                 
frequencyBodyAccelerometerMagnitude.SD      
frequencyBodyAccelerometerJerkMagnitude.SD  
frequencyBodyGyroscopeMagnitude.SD          
frequencyBodyGyroscopeJerkMagnitude.SD 

