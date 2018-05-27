#The gapminder dataset
library(gapminder)
library(dplyr) # filtering sorting and summarizing data 
#just type the name of the package and press (ctrl enter)to see the content
gapminder
# if you want to see the name of the countries sorted by the particular year using pipe function
# %>% pipe function 
gapminder %>%
   filter(year==2002,country=="China")
# arrange lets you sort data in ascending by defualt desc by defining
gapminder %>%
   arrange(year==2007)
#descending
#shows the highest percapita income in the countries from the gapminder dataset

gapminder %>%
   filter(year==2007) %>%
   arrange(desc(gdpPercap))
# mutate to change a variable and making a new column named gpd 
gapminder %>%
   mutate(gdp=gdpPercap*pop)
#combining verbs and finding the highest gpd from the dataset in year 2007
gapminder %>%
   mutate(gdp=gdpPercap*pop) %>%
   filter(year==2007) %>%
   arrange(desc(gdp))
#Visualizing with ggplot


gapminder