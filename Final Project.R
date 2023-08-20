## Final Project

# Data
library(tidyverse)
install.packages("medicaldata")
remotes::install_github("higgi13425/medicaldata")

Smart <- medicaldata::smartpill

smart_cat<- Smart |>
		mutate (group_cat = factor(Group, labels = c("Critical Patient", "Healthy Volunteer")),
						sex_cat = factor(Gender, labels = c("Female", "Male")),
						race_cat = factor(Race, labels = c("White", "Black", "Asian/Pacific Islander", "Hispanic", "Other")))
count(smart_cc, race_cat)

smart_cc <- na.omit(smart_cat)

