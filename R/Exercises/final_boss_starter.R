# Black Cherry tree analysis

library(dplyr)
library(here)
library(readr)


# Import data ----

input_path <- 
  paste0(
  "C:/Users/student/Desktop/forest-project/",
  "Data/Input/black_cherry_trees.csv"
)

if (
  !file.exists(input_path)
  ) {
  dir.create(
    dirname(input_path),
    recursive = TRUE,
    showWarnings = FALSE
  )

  readr::write_csv(
    datasets::trees,
    input_path
  )
}

trees <- 
  readr::read_csv(
  input_path,
  show_col_types = FALSE
)


# Prepare measurements ----

trees <- 
  trees |>
  dplyr::mutate(
    Girth = Girth * 2.54,
    Height = Height * 0.3048,
    size_class = dplyr::case_when(
      Girth < 30 ~ "small",
      Girth < 45 ~ "medium",
      TRUE ~ "large"
    )
  )


# Summarise the trees ----

trees <- trees |>
  dplyr::summarise(
    n_trees = dplyr::n(),
    mean_diameter_cm = mean(Girth),
    mean_height_m = mean(Height),
    mean_volume_ft3 = mean(Volume),
    .by = size_class
  )


# Save results ----

readr::write_csv(
  trees,
  input_path
)

readr::write_csv(
  trees,
  "C:/Users/student/Desktop/tree_summary.csv"
)