library(ggplot2)
MYDATA<-read.csv(file="C:/test/AirPassengers.csv")
#print(MYDATA)

theme_set(theme_bw(base_size = 15))
p<-ggplot(MYDATA, aes(x=time, y=value))+geom_point()+labs(title="AirPassengers",x="년도",y="승객수")

reg<-lm(value ~ time, data = MYDATA)
print(reg)

print(p+geom_abline(intercept = -62055.91,slope = 31.89,colour="blue"))