install.packages("tidyverse")
library("tidyverse")


View(penguins)

install.packages('palmerpenguins')
library('palmerpenguins')

install.packages("ggplot2")
library("ggplot2")


#fungsi pertama 
ggplot()

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(color="purple")

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(color=species))

ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(shape=species,color=species))

#fungsi facet memungkinkan kita membuat plot terpisah untuk setiap spesies
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(shape=species,color=species)) + facet_grid("species")

#fungsi labs membuat judul
ggplot(data=penguins,aes(x=flipper_length_mm,y=body_mass_g)) + geom_point(aes(shape=species,color=species)) + facet_grid("species") + labs(title = "Palmer Penguins : Body Mass vs Flipper Length")



