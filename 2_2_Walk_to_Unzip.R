library(tidyverse)

myzipfiles <- list.files(path = "1_R_Hacks/Zip_files/", pattern = "gz",full.names = TRUE)
myzipfiles
rm(i)

walk(.x = myzipfiles, .f = gunzip, remove = FALSE, .progress = TRUE)

walk(.x = myzipfiles, .f = safely(gunzip), remove = FALSE, .progress = TRUE)
