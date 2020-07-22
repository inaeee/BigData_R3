library(ggplot2)
library(ggExtra)
library(ggcorrplot)

p<-ggplot(mtcars, aes(mpg)) + geom_density(aes(fill=factor(gear)), alpha=0.8) + labs(title = "경험적 확률밀도함수", x="주행연비", fill="기어의 개수")

print(p)