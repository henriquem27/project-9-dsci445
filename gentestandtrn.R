### Generating trainning and test data sets


heart <- read.csv("heart.csv")

library(tidyverse) 


set.seed(445)
n <- nrow(heart)
trn <- seq_len(n) %in% sample(seq_len(n),round( 0.6*n))

train <- heart[trn,]
test <- heart[!trn,]


write_csv(train, path = "train.csv")
write_csv(test, path = "test.csv")
