# To create art using data specified 

library(ggplot2)
library(tibble)
library(patchwork)

set.seed(12567825)
woosh_plot <- function(){
  random_data <- USArrests[sample(nrow(USArrests), 25),]
  ggplot(random_data, aes(x = Assault, y = Murder, xend = Rape, 
                          yend = UrbanPop, color = UrbanPop))+
    geom_segment(show.legend = FALSE) +
    coord_polar() +
    scale_y_continuous(expand = c(0, 0)) +
    scale_x_continuous(expand = c(0, 0)) + 
    scale_color_viridis_c() + 
    scale_size(range = c(0, 10)) + 
    theme_void() +
    
    geom_point(show.legend = FALSE, 
               aes(x = Assault, y = Murder, colour = UrbanPop, size = 5)) + 
    geom_point(show.legend = FALSE, size = 1, colour = "#222222") + 
    coord_polar() + 
    theme_void() 
}

