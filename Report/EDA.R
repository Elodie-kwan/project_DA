# Loading the data.frame 

German_credit <- read.csv2('/Users/katiavoltz/Desktop/Project_in_DA/Project/GermanCredit.csv')
German_credit <- German_credit[,-1]

# Need to understand the data set.

# The response variable is Y = 'Good credit' = 1 OR Y = 'Bad credit' = 0 
# Can make logistic regression P(Y=1)? 
# Y = a1.x1 + a2.x2 + ... + aN.xN
# Classification tree
# KNN analysis
# No missing values 
# Goal: try to understand according to the characteristics of a new applicant to a credit if it is a 'good credit' or 'bad'


### Loading useful packages
library(summarytools)
library(DT)
library(Hmisc)  
library(tidyverse)
library(tidyquant)
library(ggthemes)
library(RColorBrewer)
library(corrplot)
library(psych)
library(GGally)
library(corrr)
library(corrplot)
library(ggcorrplot)
library(kableExtra)
library(DataExplorer)
library(inspectdf)
library(dplyr)
library(corrplot)
library(caret)
attach(German_credit)
library(ggplot2)


# Select relevant workshop models to better understand 

### EDA

str(German_credit)

#list of dummy variables to transform into factors
Binary_var <- c('NEW_CAR', 'USED_CAR', 'FURNITURE', 'RADIO.TV', 'EDUCATION', 'RETRAINING', 'MALE_DIV', 'MALE_SINGLE', 
              'MALE_MAR_or_WID', 'CO.APPLICANT', 'GURANTOR', 'REAL_ESTATE', 'PROP_UNKN_NONE',
              'OTHER_INSTALL', 'RENT', 'OWN_RES', 'TELEPHONE', 'FOREIGN', 'RESPONSE')

# Define the variable good and bad credit according to 1 - 0
German_credit$Good_credit <- ifelse(German_credit$RESPONSE==1, 1, 0)
German_credit$Good_credit <-as.factor(German_credit$Good_credit)

# Visualization
head(German_credit)

# transform the binary and categorical variables as factors
# categorical:
German_credit$CHK_ACCT <- as.factor(German_credit$CHK_ACCT)
German_credit$HISTORY <- as.factor(German_credit$HISTORY)
German_credit$SAV_ACCT <- as.factor(German_credit$SAV_ACCT)
German_credit$EMPLOYMENT <- as.factor(German_credit$EMPLOYMENT)
German_credit$PRESENT_RESIDENT <- as.factor(German_credit$PRESENT_RESIDENT)
German_credit$JOB <- as.factor(German_credit$JOB)

# Binary:
German_credit$NEW_CAR <- as.factor(German_credit$NEW_CAR)
German_credit$USED_CAR <- as.factor(German_credit$USED_CAR)
German_credit$FURNITURE <- as.factor(German_credit$FURNITURE)
German_credit$RADIO.TV <- as.factor(German_credit$RADIO.TV)
German_credit$EDUCATION <- as.factor(German_credit$EDUCATION)
German_credit$RETRAINING <- as.factor(German_credit$RETRAINING)
German_credit$MALE_DIV <- as.factor(German_credit$MALE_DIV)
German_credit$MALE_SINGLE <- as.factor(German_credit$MALE_SINGLE)
German_credit$MALE_MAR_or_WID <- as.factor(German_credit$MALE_MAR_or_WID)
German_credit$CO.APPLICANT <- as.factor(German_credit$CO.APPLICANT)

German_credit$GURANTOR <- as.factor(German_credit$GURANTOR)

German_credit$REAL_ESTATE <- as.factor(German_credit$REAL_ESTATE)
German_credit$PROP_UNKN_NONE <- as.factor(German_credit$PROP_UNKN_NONE)
German_credit$OTHER_INSTALL <- as.factor(German_credit$OTHER_INSTALL)
German_credit$RENT <- as.factor(German_credit$RENT)
German_credit$OWN_RES <- as.factor(German_credit$OWN_RES)
German_credit$TELEPHONE <- as.factor(German_credit$TELEPHONE)
German_credit$FOREIGN <- as.factor(German_credit$FOREIGN)
German_credit$RESPONSE <- as.factor(German_credit$RESPONSE)
# 'error GUARANTOR variable '

# Easier way ? 
# > German_credit[sapply(German_credit, is.logical)] <-lapply(German_credit[sapply(German_credit, is.logical)],as.factor)


# examine one variable by one. 
dfSummary(German_credit, style = 'grid')
view(dfSummary(German_credit, style="grid",plain.ascii = FALSE, tmp.img.dir = "/tmp"))


# can analyse the proportions by each variables, one by one. 700 good credits 
plot_intro(German_credit)

# Need to plot the numerical variables in histogram 
plot_histogram(German_credit)
plot_density(German_credit)

# ANALYSIS OF RESPONSE variable
ggplot(German_credit) + geom_bar(aes(x = RESPONSE))


# Numerical variables and the response Good_credit
plot_boxplot(German_credit, by = 'Good_credit', ncol=2,title = "Side-by-side boxplots")






# Correspondance of 2 variables 
ggplot(German_credit)+
  aes(x=RESPONSE, y=AGE)+
  geom_boxplot()
  

# Logistic regression to see the significant variables (not working)
mod1 <- glm(RESPONSE~., data = German_credit, family= binomial)
summary(mod1)

