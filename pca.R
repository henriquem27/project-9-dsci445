###

train <- read.csv("train.csv")



str(train)

# try to make 



pca <- prcomp(train[,c("RestingBP","Cholesterol","HeartDisease","Oldpeak","MaxHR")], center = TRUE, scale = TRUE)

# PCA does not work for categorical variabels.
pca2 <- prcomp(train,center = TRUE,scale = TRUE)


# try to make dummy variables
train$CPTASY <- ifelse(train$ChestPainType == 'ASY', 1, 0)

str(train)

pca2 <- prcomp(train[,c("RestingBP","Cholesterol","HeartDisease","Oldpeak","MaxHR","CPTASY")],center = TRUE,scale = TRUE)

biplot(pca2)
