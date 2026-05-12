pacman::p_load(tidyverse, janitor)
menus_classified <- read_csv("data/menus_classified.csv")

# Run a subscript
source("scripts/subscripts_analyze/analyze_step_1.R")

# Create a visualization
p <- menus_classified |> 
  ggplot() +
  aes(x = x, y = y) +
  geom_point() +
  theme_bw()

# Save a plot to file
ggsave("communications/visualizations/scatter_plot.svg", plot = p)
