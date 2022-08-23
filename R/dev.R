# Set up package -----------------------------------
#usethis::use_git()
#usethis::use_github()
#usethis::create_github_token()
#usethis::use_mit_license()

# Data manipulation -----------------------------------
# usethis::use_package("circlize")
# usethis::use_package("rlang")
# usethis::use_package("reshape2")

# Bioconductor -----------------------------------

# Tidyverse -----------------------------------
# usethis::use_package("stringr", min_version = "1.4.0")
# usethis::use_package("magrittr", min_version = "2.0.1")
# usethis::use_package("dplyr", min_version = "1.0.7")
# usethis::use_package("tibble", type = "Suggests")
# usethis::use_package("purrr", type = "Suggests")
# usethis::use_package("tidyr", min_version = "1.1.4")
# usethis::use_package("ggplot2", min_version = "3.3.5")
# usethis::use_package("roxygen2"); usethis::use_pipe(export = TRUE)
# usethis::use_package("ggpubr")

# Set up NAMESPACE and install -----------------------------------
#devtools::document()
#devtools::load_all()
#devtools::check()
#devtools::install()

# For checking packages needed -----------------------------------
# expression_data <- read.csv(
#   "/Users/TedCCLeung/Documents/Projects/Photoperiod/Analysis/PhShiny/data/archive/data/DIURNALexpression.csv",
#   row.names = 1
#   )
#usethis::use_data(expression_data, overwrite = TRUE, compress = "xz")

