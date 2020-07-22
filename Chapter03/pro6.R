library(ggplot2)
library(ggExtra)
library(ggcorrplot)

theme_set(theme_classic())

#박스플롯
mtcars$gear<-factor(as.character(mtcars$gear))
result<-ggplot(mtcars, aes(x=gear,y=mpg)) + geom_boxplot(varwidth = F, fill="red") + labs(title="비교를 위한 박스플롯") + stat_summary(fun.y = "mean", geom = "point", size=3, color="white")

print(result)

#기어가 3,4,5개인 차량들이 있는 것을 알 수 있다.
#평균은 흰색 점으로 표현된다.