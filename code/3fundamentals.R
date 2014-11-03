

library(lattice)
xyplot(Petal.Length ~ Sepal.Length | Species, 
   data = iris, layout = c(3, 1))



library(ggplot2)
p <- qplot(Sepal.Length, Petal.Length, data = iris)
p + facet_wrap(~ Species, ncol = 3)



xyplot(Petal.Length ~ Sepal.Length | Species, 
   data = iris, layout = c(3, 1))



xyplot(Petal.Length ~ Sepal.Length | Species, 
   data = iris, layout = c(3, 1),
   scales = list(relation = "sliced"))



xyplot(Petal.Length ~ Sepal.Length | Species, 
   data = iris, layout = c(3, 1),
   scales = list(relation = "free"))



xyplot(sunspot.year ~ time(sunspot.year), type = "l")



xyplot(sunspot.year ~ time(sunspot.year), type = "l")


