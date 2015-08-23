library(dplyr)
test <- read.table("test/X_test.txt", row.names=NULL)
subtest <- read.table("test/subject_test.txt", row.names=NULL)
test<-cbind(test,subtest)
acttest <- read.table("test/y_test.txt", row.names=NULL)
test<-cbind(test,acttest)

train <- read.table("train/X_train.txt", row.names=NULL)
subtrain <- read.table("train/subject_train.txt", row.names=NULL)
train<-cbind(train,subtrain)
acttrain <- read.table("train/y_train.txt", row.names=NULL)
train<-cbind(train,acttrain)

tidy<-rbind(train,test)
features <- read.table("features.txt")
features$V2<-gsub("(-|\\(|\\)|,)","",features$V2)
features$V1=NULL
features<- rbind(features,"subject","activity")
colnames(tidy)<-features$V2

tidy2 <- tidy[,!duplicated(colnames(tidy))]


selected <- tidy2 %>% select(matches("mean|std|activity|subject"))

avg <- selected %>% group_by(activity,subject) %>% summarise_each(funs(mean))
write.table(avg,file="tidy.txt",row.name=FALSE)
# avgact <- selected %>% group_by(activity) %>% summarise_each(funs(mean))
