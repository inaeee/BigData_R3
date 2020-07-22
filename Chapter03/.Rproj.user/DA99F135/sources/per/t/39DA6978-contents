library(ggplot2)
library(lubridate)

#write.csv(airmiles, file="C:/test/airmiles.txt")
air=read.csv(file="C:/test/airmiles.txt")

air$time2<-as.Date(air$time, format="%Y-%m-%d", origin="1900-01-01")
#print(air)

air$time3<-paste(month.abb[month(air$time2)], sep=". ", lubridate::year(air$time2))
print(air)

theme_set(theme_gray(base_size = 10))
a<-ggplot(air, aes(x=time2)) + geom_line(aes(y=value)) + labs(title="airmiles데이터셋", subtitle="lubridate를 이용하여") + scale_x_date(labels=air$time3, breaks=air$time2) + theme(axis.text.x=element_text(angle=90, vjust = 0.5), panel.grid.minor = element_blank())
print(a)