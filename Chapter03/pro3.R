library(ggplot2)
library(ggalt)
MYDATA<-read.csv(file="C:/test/AirPassengers.csv")
#print(MYDATA)

theme_set(theme_bw(base_size = 15))
reg<-lm(value ~ time, data = MYDATA)
print(reg)
ggalt_data<-MYDATA[MYDATA$time>=1958 & MYDATA$time<=1960 & MYDATA$value>=300 & MYDATA$value<=500, ]

p<-ggplot(MYDATA, aes(x=time, y=value))+geom_point()+labs(title="AirPassengers",x="년도",y="승객수")+geom_abline(intercept = -62055.91,slope = 31.89,colour="blue")+geom_smooth(aes(x=time,y=value), method='loess',colour="black") + geom_encircle(aes(x=time,y=value),data=ggalt_data,size=4,colour="blue")


print(p)