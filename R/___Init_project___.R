# One-time project setup ------------------------------------------------------

if (!requireNamespace("renv", quietly = TRUE)) {
  utils::install.packages("renv")
}

project_root <- normalizePath(".", winslash = "/", mustWork = TRUE)
lockfile <- file.path(project_root, "renv.lock")

if (file.exists(lockfile)) {
  message("Existing renv.lock found; restoring its recorded dependencies.")
  renv::activate(project = project_root)
  renv::restore(
    project = project_root,
    lockfile = lockfile,
    prompt = FALSE
  )
  message("Setup complete. renv.lock was not updated.")
} else {
  message("No renv.lock found; initializing a new project library.")
  renv::init(project = project_root, bare = TRUE)

  initial_packages <- c(
    "countdown", "fs", "ggplot2", "here", "janitor", "jsonlite",
    "knitr", "languageserver", "purrr", "qrcode", "quarto", "renv",
    "remotes", "rlang", "showtext", "sysfonts", "tidyverse", "usethis"
  )
  renv::install(initial_packages, project = project_root)
  renv::snapshot(project = project_root, prompt = FALSE)
  message("New project setup complete and renv.lock created.")
}
