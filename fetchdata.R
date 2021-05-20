unlink("data", force = T, recursive = T)
if(!dir.exists("data")) dir.create("data")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "data/downloaded.zip", method="curl")
unzip("data/downloaded.zip", exdir="data")

