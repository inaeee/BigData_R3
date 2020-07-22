library(ggplot2)
MYDATA<-read.csv(file="C:/test/AirPassengers.csv")
print(MYDATA)
#plot(MYDATA$time,MYDATA$value,type='p')

theme_set(theme_bw())
print(ggplot(MYDATA, aes(x=time, y=value))+geom_point()+labs(title="AirPassengers",x="년도",y="승객수"))