# Title     : R-baic
# Objective : TODO
# Created by: noah
# Created on: 2021/05/30

install.packages('faraway')
install.packages("ggplot2")
install.packages("dplyr")

library(faraway)
library(ggplot2)
library(dplyr)

data(nepali)

nepali <- nepali %>%
  select(id, sex, wt, ht, age) %>%
  mutate(id = factor(id),
         sex = factor(sex, levels = c(1, 2),
                      labels = c("male", "female"))) %>%
  distinct(id, .keep_all = TRUE);