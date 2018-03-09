setwd(getwd())
train <- read.csv("train.csv")
View(train)
test <- read.csv("test.csv")
View(test)
#counts each occurance of data
table(train$Survived)

#structure of the dataframe
str(train)

table(train$Survived)
prop.table(table(train$Survived))
test$Survived <- rep(0, 418)
submit <- data.frame(PassangerId = test$PassengerId, Survived = test$Survived)

#create a csv file
write.csv(submit, "submit.csv", row.names = FALSE)
View(submit)

#create a new dataframe with results
submit <- data.frame(PassengerId = test$PassengerId, Survived = test$Survived)

#create a csv file
write.csv(submit, "submit.csv", row.names = FALSE)
