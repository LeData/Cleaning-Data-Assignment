# Needs the dplyr package
library(dplyr)


# Collects the variable names and the activities (not as factors yet)
names<-read.table("UCI HAR Dataset/features.txt",as.is=TRUE)[[2]]
act<-read.table('UCI HAR Dataset/activity_labels.txt',as.is=TRUE)

# Collects the subjects data and sets them as factors.
Subj_table<-rbind(read.table("UCI HAR Dataset/train/subject_train.txt",col.names = 'subjects'),
                  read.table("UCI HAR Dataset/test/subject_test.txt",col.names = 'subjects'))
Subj_table$subjects<-as.factor(Subj_table$subjects)

# Collects the activity data, sets them as factors with the correct labels
Act_table<-rbind(read.table("UCI HAR Dataset/train/y_train.txt",col.names = 'activity'),
                 read.table("UCI HAR Dataset/test/y_test.txt",col.names = 'activity'))
Act_table$activity<-factor(Act_table$activity,levels=act[[1]],labels=act[[2]])

# Puts the main data together and selects the desired variables
Data_table<-rbind(read.table("UCI HAR Dataset/train/x_train.txt",col.names = names),
                  read.table("UCI HAR Dataset/test/x_test.txt",col.names = names))%>%
    select(matches('std\\(\\)|(mean\\(\\))',vars=names))
                   

# Putting it all together
All_table<-cbind(Subj_table,Act_table,Data_table)
Avg_table<-All_table%>%group_by(activity,subjects)%>%summarize_all(mean)

# Exporting the data
write.csv(All_table,"All_means_and_sd.csv",row.names = FALSE)
write.csv(Avg_table,"Avg_by_activity.csv",row.names = FALSE)

# Adding a txt file for the assignment submission
write.table(Avg_table,"Avg_by_activity.txt",row.names = FALSE)

# Cleaning up
rm(Subj_table,Act_table,Data_table)

