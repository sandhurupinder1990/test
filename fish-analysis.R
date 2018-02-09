# .libPaths("P:/RLibrary2")
library(tidyverse)
library(ggplot2)
fish_data <- read_csv("Gaeta_etal_CLC_data_1.csv")

fish_data %>% 
  mutate(length_cat = ifelse(length>300,"big", "small")) %>% 
  filter( scalelength >= 1) ->fish_data_cat

single_fish <-filter(fish_data,annnumber== "EDGE")
  

ggplot(data=single_fish, aes(x=length, y= scalelength, color=lakeid))+ geom_point() 
