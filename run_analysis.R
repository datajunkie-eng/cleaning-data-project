###
### Functionality to clean UCI's 
###    "Human Activity Recognition Using Smartphones Data Set"
###   link : http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
###
### There are two main workhorses:
### 1. load.activity.sets - consolidates test and train datasets, linking in 
###    activity and subject data, with renaming columns to be more usable
### 2. aggregate - takes the output from load.activity.sets, groups by 
###   activityname and subjectid, then takes the average of the measurements columns

### NOTE: this script assumes the presence of getdata_projectfiles_UCI HAR Dataset.zip,
###   which contains all the samsung data

library(dplyr)

# get the data.table at the path, converted to a tibble
load.tibble <- function(path,...) {
  tmp <- read.table(file=path,...)
  tbl_df(tmp)
}

# loads features.txt and does a series of regex replacements to make 
#   them suitable for column names
get.nice.feature.names <- function(root.dir) {
  file.path <- file.path(root.dir, "features.txt")
  load.tibble(file.path) %>%
    mutate(name=tolower(gsub("[()-]",".",V2))) %>%
    mutate(name=gsub("\\.{3}",".",name)) %>%
    mutate(name=gsub("\\.mean\\.([a-z])$","\\1mean",name)) %>%
    mutate(name=gsub("\\.std\\.([a-z])$","\\1std",name)) %>%
    mutate(name=sub("^t","time",name)) %>%
    mutate(name=sub("^f","fft",name)) %>%
    mutate(name=sub("bodyacc","bodyaccelerometer",name)) %>%
    mutate(name=sub("bodygyro","bodygyroscope",name)) %>%
    mutate(name=sub("gravityacc","gravityacceleration",name))
}

# joins to activity_labels so the set can include the names of the activities 
#   instead of merely their id
set.activity.names <- function(data, root.dir) {
  path <- file.path(root.dir, "activity_labels.txt")
  activities <- load.tibble(path, col.names=c("activityid", "activityname")) %>%
                  mutate(activityname = tolower(activityname))
  inner_join(data, activities)
}


# for a given subset name (test or train):
#  1. load the sample data
#  2. add a unique identifier and originalset indicator
#  3. add the activity names for the activity id  
#  4. look up the subject for the given observation
load.activity.set <- function(root.dir, features, name) {

  file.path <- file.path(root.dir, name, paste0("X_",name,".txt"))
  data <- load.tibble(file.path, col.names = features$name) %>%
    select(ends_with("mean"), ends_with("std")) %>%
    mutate(observationid=row_number(), originalset=name)
  
  file.path <- file.path(root.dir, name, paste0("y_",name,".txt"))
  more <- load.tibble(file.path, col.names=c("activityid"))
  data <- bind_cols(data, more) %>%
    set.activity.names(root.dir)
  
  file.path <- file.path(root.dir, name, paste0("subject_", name, ".txt"))
  more <- load.tibble(file.path, col.names=c("subjectid"))
  bind_cols(data, more)
}

# load the test and train datasets, combine them and select the 
#    subset of columns to be exported
load.activity.sets <- function(root.dir) {
  features <- get.nice.feature.names(root.dir)
  test.data <- load.activity.set(root.dir, features, "test")
  train.data <- load.activity.set(root.dir, features, "train")
  
  bind_rows(test.data, train.data) %>%
  select(observationid, originalset, activityname, subjectid, ends_with("mean"), ends_with("std"))
}

#takes the mean of all mean/std fields, grouped by activityname and subjectid
aggregate <- function (data) {
  data %>%
    group_by(activityname, subjectid) %>%
    summarize(
      timebodyaccelerometerxmean=mean(timebodyaccelerometerxmean),
      timebodyaccelerometerymean=mean(timebodyaccelerometerymean),
      timebodyaccelerometerzmean=mean(timebodyaccelerometerzmean),
      timegravityaccelerationxmean=mean(timegravityaccelerationxmean),
      timegravityaccelerationymean=mean(timegravityaccelerationymean),
      timegravityaccelerationzmean=mean(timegravityaccelerationzmean),
      timebodyaccelerometerjerkxmean=mean(timebodyaccelerometerjerkxmean),
      timebodyaccelerometerjerkymean=mean(timebodyaccelerometerjerkymean),
      timebodyaccelerometerjerkzmean=mean(timebodyaccelerometerjerkzmean),
      timebodygyroscopexmean=mean(timebodygyroscopexmean),
      timebodygyroscopeymean=mean(timebodygyroscopeymean),
      timebodygyroscopezmean=mean(timebodygyroscopezmean),
      timebodygyroscopejerkxmean=mean(timebodygyroscopejerkxmean),
      timebodygyroscopejerkymean=mean(timebodygyroscopejerkymean),
      timebodygyroscopejerkzmean=mean(timebodygyroscopejerkzmean),
      fftbodyaccelerometerxmean=mean(fftbodyaccelerometerxmean),
      fftbodyaccelerometerymean=mean(fftbodyaccelerometerymean),
      fftbodyaccelerometerzmean=mean(fftbodyaccelerometerzmean),
      fftbodyaccelerometerjerkxmean=mean(fftbodyaccelerometerjerkxmean),
      fftbodyaccelerometerjerkymean=mean(fftbodyaccelerometerjerkymean),
      fftbodyaccelerometerjerkzmean=mean(fftbodyaccelerometerjerkzmean),
      fftbodygyroscopexmean=mean(fftbodygyroscopexmean),
      fftbodygyroscopeymean=mean(fftbodygyroscopeymean),
      fftbodygyroscopezmean=mean(fftbodygyroscopezmean),
      timebodyaccelerometerxstd=mean(timebodyaccelerometerxstd),
      timebodyaccelerometerystd=mean(timebodyaccelerometerystd),
      timebodyaccelerometerzstd=mean(timebodyaccelerometerzstd),
      timegravityaccelerationxstd=mean(timegravityaccelerationxstd),
      timegravityaccelerationystd=mean(timegravityaccelerationystd),
      timegravityaccelerationzstd=mean(timegravityaccelerationzstd),
      timebodyaccelerometerjerkxstd=mean(timebodyaccelerometerjerkxstd),
      timebodyaccelerometerjerkystd=mean(timebodyaccelerometerjerkystd),
      timebodyaccelerometerjerkzstd=mean(timebodyaccelerometerjerkzstd),
      timebodygyroscopexstd=mean(timebodygyroscopexstd),
      timebodygyroscopeystd=mean(timebodygyroscopeystd),
      timebodygyroscopezstd=mean(timebodygyroscopezstd),
      timebodygyroscopejerkxstd=mean(timebodygyroscopejerkxstd),
      timebodygyroscopejerkystd=mean(timebodygyroscopejerkystd),
      timebodygyroscopejerkzstd=mean(timebodygyroscopejerkzstd),
      fftbodyaccelerometerxstd=mean(fftbodyaccelerometerxstd),
      fftbodyaccelerometerystd=mean(fftbodyaccelerometerystd),
      fftbodyaccelerometerzstd=mean(fftbodyaccelerometerzstd),
      fftbodyaccelerometerjerkxstd=mean(fftbodyaccelerometerjerkxstd),
      fftbodyaccelerometerjerkystd=mean(fftbodyaccelerometerjerkystd),
      fftbodyaccelerometerjerkzstd=mean(fftbodyaccelerometerjerkzstd),
      fftbodygyroscopexstd=mean(fftbodygyroscopexstd),
      fftbodygyroscopeystd=mean(fftbodygyroscopeystd),
      fftbodygyroscopezstd=mean(fftbodygyroscopezstd))
  }

go <- function() {
  unzip("getdata_projectfiles_UCI HAR Dataset.zip")
  combined <- load.activity.sets("UCI HAR Dataset")
  aggregated <- aggregate(combined)

  write.table(combined, "tidy.txt", row.names = FALSE)
  write.table(aggregated, "aggregated.txt", row.names = FALSE)
}

go()