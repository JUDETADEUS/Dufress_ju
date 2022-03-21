install.packages("gcookbook")
library(tidyverse)
library(gcookbook)
train
train$Pclass <- as.factor(train$Pclass)
train$Survived <- as.factor(train$Survived)
train$Sex <- as.factor(train$Sex)
train$Embarked <- as.factor(train$Embarked)
ggplot(train, aes(x = Survived)) +
  theme_classic() +
  geom_bar() +
  labs(title = "Bar chart showing the survival rate in the train",
       y = "Passenger count",
       caption = "Twitter @Judetadeus_LO")
ggplot(train, aes(x = Survived)) +
  theme_linedraw() +
  geom_bar() +
  labs(title = "Bar chart showing the survival rate by gender",
       y = "passenger count",
       caption = "Twitter @Judetadeus_LO")
ggplot(train, aes(x = Pclass, fill = Survived)) +
  theme_economist() +
  geom_bar() +
  labs(title = "Bar chart showing survival rate by class tickets",
       y = "Passenger count",
       caption = "Twitter @Judetadeus_LO")
ggplot(train, aes(x = Sex, fill = Survived)) +
  theme_bw() +
  geom_bar() +
  labs(title = "Bar chart showing survival rate by passenger class tickets and gender",
       y = "Passenger count",
       caption = "Twitter 
       @Judetadeus_LO")
ggplot(train, aes(x = Age, fill = Survived)) +
  theme_bw() +
  geom_histogram(binwidth = 7, na.rm = TRUE) +
  labs(title = "Histogram showing the passengers age distribution",
       y = "Passenger count",
       caption = "Twitter
       @Judetadeus_LO")
ggplot(train, aes(x = Survived, y =Age)) +
  theme_bw() +
  geom_boxplot() +
  labs(title = "Boxplot representing survival rate by age",
       y = "Passenger count",
       caption = "Twitter
       @Judetadeus_LO")
ggplot(train, aes(x = Age, fill = Survived)) +
  theme_bw() +
  facet_wrap(Sex ~ Pclass) +
  geom_density(alpha = 0.6, na.rm = TRUE) +
  labs(x = "Survived",
       y = "Age",
       title = "TRAIN SURVIVAL RATE SHOWING PCLASS, SEX AND AGE ",
       caption = "TWITTER 
       @JUDETADEUS_LO")
  
