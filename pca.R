###



train <- read.csv("train.csv")




pca <- pca <- prcomp(train[,c("RestingBP","Cholesterol","HeartDisease","Oldpeak","MaxHR")], center = TRUE, scale = TRUE)


biplot(pca)
