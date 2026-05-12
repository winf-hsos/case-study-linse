pacman::p_load(tidyverse, janitor)
menus <- read_csv("data/menus_consolidated.csv")

# Add the new columns (replace logic)
menus <- menus |> 
  mutate(
    group_level_1 = "...",
    group_level_2 = "...",
    group_level_3 = "...",
    code_main_protein = "..."
)

# Run a subscript
source("scripts/subscripts_classify/classify_step_1.R")

menus |>
  write_csv("data/menus_classified.csv")
