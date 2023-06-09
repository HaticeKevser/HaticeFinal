install.packages('readxl')
library(readxl)
install.packages("tidyverse")
library(ggplot2)

Statistics_data <- read_excel("C:/Users/USER/Desktop/HaticeFinal/data/Statistics_data.xlsx")
View(Statistics_data)

reg1 <- lm(formula = GDP ~ CPI_Growth_Rate + Liquid_Liabilities + Real_Effective_Exchange_Rates, data = Statistics_data)

summary(reg1)

plot(Statistics_data)


ggplot(data = Statistics_data, mapping = aes(x = CPI_Growth_Rate, y = GDP))+
  geom_point(color = "red", size = 2, alpha = 0.5)

ggplot(data = Statistics_data, mapping = aes(x = Liquid_Liabilities, y = GDP))+
  geom_point(color = "blue", size = 2, alpha = 0.5)

ggplot(data = Statistics_data, mapping = aes(x = Real_Effective_Exchange_Rates, y = GDP))+
  geom_point(color = "green", size = 2, alpha = 0.5)

