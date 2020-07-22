library(ggplot2)
library(ggExtra)
library(ggcorrplot)


#차량별 평균연비
city_mpg<-aggregate(mpg$cty, by=list(mpg$model), FUN=mean)
colnames(city_mpg)<-c("모델","연비")
city_mpg<-city_mpg[order(city_mpg$연비, decreasing=T), ]

#모델들 명목변수로 전환
city_mpg$모델<-factor(city_mpg$모델, levels=city_mpg$모델)

result<-ggplot(city_mpg,aes(x=모델,y=연비)) + geom_bar(stat = "identity", width=0.5, fill="red") + labs(title="연비 순위의 오름차순 막대그림표") + theme(axis.text.x=element_text(angle=90))
print(result)