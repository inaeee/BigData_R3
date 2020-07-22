library(ggplot2)
library(ggExtra)


gg<-ggplot(mtcars, aes(cyl,mpg))+geom_count()
ggM<-ggMarginal(gg, type = "histogram",fill="transparent")
print(ggM)