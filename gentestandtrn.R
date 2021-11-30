### Generating training and test data sets


heart <- read.csv("heart.csv")


heart$ChestPainType <- as.factor(heart$ChestPainType)
heart$Sex <- as.factor(heart$Sex)
heart$FastingBS <- as.factor(heart$FastingBS)
heart$RestingECG <- as.factor(heart$RestingECG)
heart$ExerciseAngina <- as.factor(heart$ExerciseAngina)
heart$ST_Slope <- as.factor(heart$ST_Slope)
heart$HeartDisease <- as.factor(heart$HeartDisease)

str(heart)


library(tidyverse) 


set.seed(445)
n <- nrow(heart)
trn <- seq_len(n) %in% sample(seq_len(n),round( 0.6*n))

train <- heart[trn,]
test <- heart[!trn,]


write_csv(train, file  = "train.csv")
write_csv(test, file = "test.csv")


