df_rb = read.csv(file.choose())
df_rb

cor(df_rb$diameter, df_rb$Vmb)
plot(df_rb$diameter, df_rb$Vmb)


library(ggplot2)
library(tidyverse)
df_rb %>%
  ggplot(aes(x=diameter , y = Vmb)) + 
  geom_point() +
  scale_y_continuous(breaks = seq(-10, -80, -10)) +
  geom_smooth(method = "lm", se = FALSE,
              col = "blue", size = 2)
