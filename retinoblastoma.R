dados <- read.csv("Y79_data.csv")

library(ggplot2)

ggplot(dados, aes(x=diameter , y=Vmb)) +
  geom_point()+
  geom_line()+
  scale_color_manual(values = c("#FFAEBC", "#A0E7E5")) 