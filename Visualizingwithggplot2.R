#Visualizing with ggplot2
gapminder_2007<-gapminder %>%
   filter(year==2007)
gapminder_2007
library(ggplot2)
#geom means we are adding geometric and point means plot
ggplot(gapminder_2007,aes(x=gdpPercap,y=lifeExp)) +
   geom_point()
# scatter plot to compare two variables 
# in the above code you will get values of x and y mixed up on left side and if you want to put them on log scale use below command
ggplot(gapminder_2007,aes(x=gdpPercap,y=lifeExp)) +
   geom_point()+ scale_x_log10()+scale_y_log10()
# Adding a color to plot 
ggplot(gapminder_2007,aes(x=gdpPercap,y=lifeExp,color=continent)) +
   geom_point()+ scale_x_log10()+scale_y_log10()
#Adding size according to any variable
ggplot(gapminder_2007,aes(x=gdpPercap,y=lifeExp,color=continent,size=pop)) +
   geom_point()+ scale_x_log10()+scale_y_log10()
