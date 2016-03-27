## Load dplyr and reshape2
library(dplyr)
library(reshape2)

## Get the data
temp<-tempfile()
download.file("https://d396qusza40orc.cloudfront.net/
getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",temp)
unzip(temp,exdir=".")
unlink(temp)

## Read the data
features<-read.table("./UCI Har Dataset/features.txt",stringsAsFactors=FALSE)
actnames<-read.table("./UCI Har Dataset/activity_labels.txt",stringsAsFactors=FALSE)
actnames<-actnames[,2]
testsubnames<-read.table("./UCI Har Dataset/test/subject_test.txt")
ytest<-read.table("./UCI Har Dataset/test/y_test.txt")
xtest<-read.table("C:/Users/Ari/Desktop/UCI HAR Dataset/test/X_test.txt"
                ,col.names=features[,2])
trainsubnames<-read.table("./UCI Har Dataset/train/subject_train.txt")
ytrain<-read.table("./UCI Har Dataset/train/y_train.txt")
xtrain<-read.table("C:/Users/Ari/Desktop/UCI HAR Dataset/train/X_train.txt"
                 ,col.names=features[,2])

## Merge the test and training data
mergex<-rbind(xtest,xtrain)
mergey<-rbind(ytest,ytrain)
subnames<-rbind(testsubnames,trainsubnames)

## Use descriptive activity names
mergey<-as.data.frame(sapply(mergey,function(x) ifelse (x==1,actnames[1],
        ifelse(x==2,actnames[2],ifelse(x==3,actnames[3],
        ifelse(x==4, actnames[4], ifelse
        (x==5,actnames[5],ifelse(x==6,
        actnames[6],x))))))))

## Combine test and training data with activity name and subject
mergex<-cbind(mergey,mergex)
mergex<-rename(mergex,Activity=V1)
mergex<-cbind(subnames,mergex)
mergex<-rename(mergex,Subject=V1)

## Extract measurements for mean and stdev
newdata<-cbind(mergex[,1:2],mergex[,c(grep("[Mm]ean",names(mergex)),
        grep("[Ss]td",names(mergex)))])

## Create a second, independent tidy data set 
## with the average of each variable for each activity and each subject.
meltnewdata<-melt(newdata,id=c("Subject","Activity"))
tidydata<-dcast(meltnewdata,Subject+Activity~variable,mean)


