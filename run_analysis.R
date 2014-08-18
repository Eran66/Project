
# 1. Merge all the data to one data set.

#set working directory to the location of the Data
setwd('E:/Documents/Programes/R_Programes/Project1/UCI HAR Dataset');

# Read the data from root Project
features = read.table('features.txt',header=FALSE); #imports features
activityType = read.table('activity_labels.txt',header=FALSE); #imports activity_labels

# Read the train data
subjectTrain = read.table('train/subject_train.txt',header=FALSE); #imports subject_train
xTrain = read.table('train/x_train.txt',header=FALSE); #imports x_train
yTrain = read.table('train/y_train.txt',header=FALSE); #imports y_train

# Read the test data
subjectTest = read.table('./test/subject_test.txt',header=FALSE); #imports subject_test.txt
xTest = read.table('./test/x_test.txt',header=FALSE); #imports x_test
yTest = read.table('./test/y_test.txt',header=FALSE); #imports y_test

# Organize the data tables
colnames(activityType) = c('activityId','activityType');
colnames(subjectTrain) = "subjectId";
colnames(xTrain) = features[,2];
colnames(yTrain) = "activityId";
colnames(subjectTest) = "subjectId";
colnames(xTest) = features[,2];
colnames(yTest) = "activityId";

# Start marging the files 
trainingData = cbind(yTrain,subjectTrain,xTrain); #Create the training file 
testData = cbind(yTest,subjectTest,xTest);        # Create the test file

# Create the final file
finalFile = rbind(testData,trainingData, deparse.level=0);

# 2Extracts only the measurements on the mean and standard deviation for each measurement. 

colNames = colnames(finalFile);

# Create a logicalVector that contains TRUE values for the ID, mean() & stddev() columns and FALSE for others
logicalVector = (grepl("activity..",colNames) | grepl("subject..",colNames) | grepl("-mean..",colNames) & !grepl("-meanFreq..",colNames) & !grepl("mean..-",colNames) | grepl("-std..",colNames) & !grepl("-std()..-",colNames));
# Subset finalData table based on the logicalVector to keep only desired columns
finalData = finalFile[logicalVector==TRUE];

# 3. Uses descriptive activity names to name the activities in the data set
# Merge the finalData set with the acitivityType table to include descriptive activity names

finalData3 = merge(finalData,activityType,by='activityId',all.x=TRUE);
# Updating the colNames vector to include the new column names after merge
colNames3 = colnames(finalData3);

# 4. Appropriately labels the data set with descriptive variable names
# Cleaning up the variable names
for (i in 1:length(colNames3))
{
  colNames3[i] = gsub("\\()","",colNames3[i])
  colNames3[i] = gsub("-std$","StdDev",colNames3[i])
  colNames3[i] = gsub("-mean","Mean",colNames3[i])
  colNames3[i] = gsub("^(t)","time",colNames3[i])
  colNames3[i] = gsub("^(f)","freq",colNames3[i])
  colNames3[i] = gsub("([Gg]ravity)","Gravity",colNames3[i])
  colNames3[i] = gsub("([Bb]ody[Bb]ody|[Bb]ody)","Body",colNames3[i])
  colNames3[i] = gsub("[Gg]yro","Gyro",colNames3[i])
  colNames3[i] = gsub("AccMag","AccMagnitude",colNames3[i])
  colNames3[i] = gsub("([Bb]odyaccjerkmag)","BodyAccJerkMagnitude",colNames3[i])
  colNames3[i] = gsub("JerkMag","JerkMagnitude",colNames3[i])
  colNames3[i] = gsub("GyroMag","GyroMagnitude",colNames3[i])
};
# Reassigning the new descriptive column names to the finalData3 
 colnames(finalData3) = colNames3;

# 5.Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
# Create a new table, finalActivityType without the activityType column
finalActivityType = finalData3[,names(finalData3) != 'activityType'];
# Summarizing the finalDataNoActivityType table to include just the mean of each variable for each activity and each subject
tidyData = aggregate(finalActivityType[,names(finalActivityType) != c('activityId','subjectId')],by=list(activityId=finalActivityType$activityId,subjectId = finalActivityType$subjectId),mean);
# Merging the tidyData with activityType to include descriptive acitvity names
tidyData = merge(tidyData,activityType,by='activityId',all.x=TRUE);
# Export the tidyData set
write.table(tidyData, './tidyData.txt',row.names=TRUE,sep='\t');

