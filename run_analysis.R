#Getting and Cleaning Data Course Project

#Requirements:
#1.Merge the training and the test sets to create one data set.
#2.Extracts only the measurements on the mean and standard deviation for each measurement. 
#3.Uses descriptive activity names to name the activities in the data set
#4.Appropriately labels the data set with descriptive variable names. 
#5.From the data set in step 4, creates a second, independent tidy data set with the average 
# of each variable for each activity and each subject.



install.packages("dplyr")
install.packages("plyr")
library(plyr)
library(dplyr)


###################################################################################
###1.Merge the training and the test sets to create one data set.

#data/UCI HAR Dataset is in working folder
#x = combined data frame of obeservations from x_train and x_test
x_train<- read.table(file ="data/UCI HAR Dataset/train/x_train.txt",sep="", header = F)
x_test<- read.table(file ="data/UCI HAR Dataset/test/x_test.txt",sep="", header = F)
x<-rbind(x_train,x_test)

#y = combined data frame from y_train and y_test
y_train<- read.table(file ="data/UCI HAR Dataset/train/y_train.txt",sep="", header = F)
y_test<- read.table(file ="data/UCI HAR Dataset/test/y_test.txt",sep="", header = F)
y<- rbind(y_train,y_test)

#subject = combined data from subject_train and subject_test
subject_train<- read.table(file ="data/UCI HAR Dataset/train/subject_train.txt",sep="", header = F)
subject_test<- read.table(file ="data/UCI HAR Dataset/test/subject_test.txt",sep="", header = F)
subject<-rbind(subject_train,subject_test)

###################################################################################
###2.Extracts only the measurements on the mean and standard deviation for each measurement. 
#start with features file, select only the columns that have name like mean() and std()

features<- read.csv("data/UCI HAR Dataset/features.txt",sep =" " ,header = F)
colnames(features)<-c("id","name") #name the columns with friendly names

selected_features<-data.frame()# in this variable we will store the selected measurement names 

for(s in 1:nrow(features))
{
  
  if(grepl("std\\(\\)",subset(features,id==s)$name ) || grepl("mean\\(\\)",subset(features,id==s)$name )) 
  {
    #replace () with "", () are special chars and will prevent us to select them by names as columns
    row <- subset(features,id==s)
    row$name<- sub("\\(\\)" , "",row$name) 
    
    selected_features <- rbind(selected_features, row)
  }
}
#now in selected_features we have only the columns we will need to extract from x data frame
#we will select the columns by id preserved in the variable selected_features

x_selected <- subset(x,select=selected_features$id) # selecting only the desired columns, those we have saved in feature_selected  
names(x_selected)<- c(selected_features$name) #apply the names from the same file 

###################################################################################
###3.Uses descriptive activity names to name the activities in the data set
activity_labels<- read.table(file ="data/UCI HAR Dataset/activity_labels.txt",sep="", header = F)
names(activity_labels)<-c("Activity-id","Activity") #use friendly names 

names(y)<-c("Activity-id") 
y_activity_labels<-subset(join(y,activity_labels),select=c(2))# select only Activity name column
names(subject)<- c("Subject")#use friendly name for subject 

#put all data together : subect, activity, observations from x_selected 
data <- cbind(subject,y_activity_labels,x_selected)

###################################################################################
#4.Appropriately labels the data set with descriptive variable names. 

description <- names(data)

# save the list of all columns in data to server as codebook 
write.table(description, file = "data/UCI HAR Dataset/codebook.md", append = FALSE, quote = FALSE, sep = "</p><p>, ",
            eol = "\n", na = "NA", dec = ".", col.names = FALSE, row.names=FALSE, qmethod =  c("escape", "double"),
            fileEncoding = "" )

description
###################################################################################
###5.From the data set in step 4, creates a second, independent tidy data set with the average 
### of each variable for each activity and each subject.


final_data<-data %>%   group_by(Subject,Activity) %>%  summarise_each(funs(mean))
print(nrow(final_data)) # 30 subjects and 6 activity, since all subjects have done all activities , we verify
                   # that result has indeed 180 rows


#save final data into a text file 
write.table(final_data, file = "data/UCI HAR Dataset/final_data.txt", append = FALSE, quote = FALSE, sep = ", ",
            eol = "\n", na = "NA", dec = ".", col.names = TRUE, row.names=FALSE, qmethod =  c("escape", "double"),
            fileEncoding = "" )




