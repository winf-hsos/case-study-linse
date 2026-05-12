pacman::p_load(tidyverse, janitor, readxl)

# Dummy data
menus <- tribble(
  ~x, ~y,
  1, 3,
  2, 5
)

# Example: Run a subscript
source("scripts/subscripts_consolidate/consolidate_step_1.R")

# Example: Write your result to a CSV-file
menus |> 
  write_csv("data/menus_consolidated.csv")
