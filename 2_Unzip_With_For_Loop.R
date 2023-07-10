library(R.utils)

list.files(path = "1_R_Hacks/Zip_files/")
list.files(path = "1_R_Hacks/Zip_files/", pattern = "gz")
list.files(path = "1_R_Hacks/Zip_files/", pattern = "gz",full.names = TRUE)
myzipfiles <- list.files(path = "1_R_Hacks/Zip_files/", pattern = "gz",full.names = TRUE)
myzipfiles
myzipfiles[1]

myzipfiles

for(i in myzipfiles) {
  print(i)
  gunzip(i, remove = FALSE)
}
