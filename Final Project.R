## Final Project

# Data
library(tidyverse)
install.packages("medicaldata")
remotes::install_github("higgi13425/medicaldata")

Smart <- medicaldata::smartpill

smart_cc<- Smart |>
		mutate (group_cat = factor(Group, labels = c("Critical Patient", "Healthy Volunteer")),
						sex_cat = factor(Gender, labels = c("Female", "Male")),
						race_cat = factor(Race, labels = c("White", "Black", "Asian/Pacific Islander", "Hispanic", "Other")))

smart_data <- na.omit(smart_cat)

list(smart_data$Age)
quantile(smart_data$Age, probs = c(.25, .75))
smart_data$Age_cat <- factor(ifelse(is.na(smart_data$Age),NA,
																			 ifelse(smart_data$Age <=28, 1,
																			 			 ifelse(smart_data$Age <= 44, 2, 3))),
																levels=1:3,
																labels=c("28 years or younger",
																				 "Between 29 - 43 years",
																				 "44 and older "))
hist(smart_data$WG.Time)

