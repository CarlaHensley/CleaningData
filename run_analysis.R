#Reading both data sets into R

xtest<- read.table("./test/X_test.txt")
ytest<- read.table("./test/y_test.txt")

xtrain<- read.table("./train/X_train.txt")
ytrain<- read.table("./train/y_train.txt")

head(xtrain,2)
names(xtest)

#checking for the dimensions

dim(xtest)
dim(ytest)
dim(xtrain)
dim(ytrain)

#Binding and merging

trainmerge<- cbind(xtrain,ytrain)
testmerge<- cbind(xtest, ytest)

merge<- rbind(trainmerge,testmerge)
head(merge,50)
summary(merge)


