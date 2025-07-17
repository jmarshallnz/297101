library(tidyverse)
library(renderthis)


which_lectures <- list.files(path = "lectures", pattern = "*.Rmd")

files = tibble(html = which_lectures) |>
  mutate(file = file.path('lectures', html)) |>
  pull(file)

pdfs <- files |>
  map_chr(to_pdf)

# copy them all to a pdf folder
fs::dir_create(file.path('lectures', 'pdf'))
fs::file_move(pdfs, file.path('lectures', 'pdf'))
