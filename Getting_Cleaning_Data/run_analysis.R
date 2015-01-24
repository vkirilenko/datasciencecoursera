run_analysis = function(){
  install.packages("data.table")
  library(data.table)
  print("Author:Vladimir Kirilenko")
  print("Let`s start!")
  print("-------------")
  print("")
  
## Reading files with data
  print("Reading data files.")
  print("Please, wait a minute...")
  test_data = read.table("./UCI HAR Dataset/test/X_test.txt")
  train_data = read.table("./UCI HAR Dataset/train/X_train.txt")
  subject_test = read.table("./UCI HAR Dataset/test/subject_test.txt")
  subject_train = read.table("./UCI HAR Dataset/train/subject_train.txt")
  activity_labels = read.table("./UCI HAR Dataset/activity_labels.txt")
  activity_table_test = read.table("./UCI HAR Dataset/test/y_test.txt")
  activity_table_train = read.table("./UCI HAR Dataset/train/y_train.txt")
  features_table = read.table("./UCI HAR Dataset/features.txt")
  
##Calculating list of MEAN and STD values from feature data
##and subsetting columns in order of this list.
  print("Renaming, sorting and merging data.")
  f_table_index = grep(".*Mean.*|.*mean.*|.*std.*", features_table[,2])
  features_table = features_table[f_table_index,]

##Replacing service symbols "()" and "-" in feature table
##and correct double "__" to "_"
  features_table = gsub('-','_',features_table$V2)
  features_table = gsub("\\(|\\)","_",features_table)
  features_table = gsub("Mean","mean",features_table)
  features_table = gsub("__","_",features_table)
  features_table = data.frame(features_table,stringsAsFactors = F)

##Assign descriptive activity names to name the activities in the table
  activity_table_test$V1 = activity_labels[activity_table_test$V1,]
  activity_table_train$V1 = activity_labels[activity_table_train$V1,]

##Merging all data in one object with subsetting MEAN and STD columns
  test_data =  cbind(subject_test,test_data[,f_table_index],activity_table_test[,1])
  train_data =  cbind(subject_train,train_data[,f_table_index],activity_table_train[,1])
  raw_data = rbind (test_data,train_data)
 
##Renaming column names in merged file and adding SUBJECT and ACTIVITY
##and sorting data in a file in order.
  colnames(raw_data) = c("Subject",features_table[,1],"Code","Activity")
  raw_data = raw_data[order(raw_data$Subject,raw_data$Activity),]
  row.names(raw_data) = c(1:nrow(raw_data))

##Creating a second tidy data set with the average of each variable
##for each activity and each subject. Writing new tidy data set into file.
  print("Creating a tidy data set.")
  raw_data[,88] = paste0(raw_data$Subject,LETTERS[raw_data$Activity])
  output = data.table(raw_data)
  output = data.frame(output[,lapply(.SD,mean),by=Code])
  output$Activity = activity_labels$V2
  print("Saving data...")
  write.table(output,"tidy_data.txt",)
  print("Done!")
}