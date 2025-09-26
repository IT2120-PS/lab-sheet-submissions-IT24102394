setwd("C:\\Users\\User\\Desktop\\IT24102394")

#Practices
data <- read.table("Data - Lab 8.txt", header = TRUE)
fix(data)
attach(data)

popmn <- mean(Nicotine)
popvar <- var(Nicotine)

samples <- c()
n <- c()
for (i in 1:30) {
  s <- sample (Nicotine,5,replace = TRUE)
  samples <- cbind(samples,s)
  n <- c(n,paste('S',i))
}
s.means <- apply(samples,2,mean)
s.vars <- apply(samples,2,var)

samplemean <- mean(s.means)
samplevars <- var(s.means)

popmn
samplemean
#Each sample of 5 values may not perfectly reprecent the whole population (Thats why it is different)

truevar = popvar/5
samplevars
#Reason for these 2 be different is; population variance measures how spread out individual values are and sample variance measures how spread out the sample means are.
#Reason to divide population variance by 5; population variance divided by size of the sample (5) is equals to sample distribution of sample mean.




#Exercise
data <- read.table ("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

#1
popmn <- mean(X1)
popsd <- sqrt(var(X1))

#2
samples <- c()
n <- c()
for (i in 1:25) {
  s <- sample (X1,6,replace = TRUE)
  samples <- cbind (samples,s)
  n <- c(n,paste('s',i))
}
colnames(samples) = n
s.means <- apply(samples,2,mean)
s.sd <- apply(samples,2,sd)

#3
samplemean <- mean(s.means)
samplesd <- sd(s.means)

truemean <- popmn
truesd <- popsd/sqrt(6)

#True mean and true sd are slightly different than the sample mean and sample sd (sample values may not perfectly reprecent the whole population)
