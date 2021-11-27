###


train <- read.csv("train.csv")head(train)


train$ChestPainType <- as.factor(train$ChestPainType)
train$Sex <- as.factor(train$Sex)
train$FastingBS <- as.factor(train$FastingBS)
train$RestingECG <- as.factor(train$RestingECG)
train$ExerciseAngina <- as.factor(train$ExerciseAngina)
train$ST_Slope <- as.factor(train$ST_Slope)
train$HeartDisease <- as.factor(train$HeartDisease)



pca <- prcomp(train[,c("RestingBP","Cholesterol","HeartDisease","Oldpeak","MaxHR")], center = TRUE, scale = TRUE)

# ran into some problems, turn categorical variables into binary variable?
pca2 <- prcomp(train,center = TRUE,scale = TRUE)

biplot(pca)
