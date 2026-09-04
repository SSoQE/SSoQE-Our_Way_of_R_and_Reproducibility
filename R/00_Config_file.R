# Shared render configuration ------------------------------------------------

if (!requireNamespace("here", quietly = TRUE)) {
  stop(
    "Package 'here' is missing. Run R/___Init_project___.R once.",
    call. = FALSE
  )
}

here::i_am("R/00_Config_file.R")

render_packages <- c("fs", "jsonlite", "knitr", "purrr", "quarto")
missing_packages <- render_packages[
  !vapply(render_packages, requireNamespace, logical(1), quietly = TRUE)
]

if (length(missing_packages)) {
  stop(
    paste0(
      "Project packages are missing: ",
      paste(missing_packages, collapse = ", "),
      ". Run R/___Init_project___.R once; ordinary renders never restore."
    ),
    call. = FALSE
  )
}

set.seed(1234)
current_date <- Sys.Date()
current_dir <- here::here()

function_files <- list.files(
  here::here("R", "Functions"),
  pattern = "[.]R$",
  recursive = TRUE,
  full.names = TRUE
)
invisible(lapply(function_files, source))

source(here::here("R", "generate_theme.R"))
