library(targets)

sapply(dir("R/", pattern = ".R$", full.names = T), source)

tar_visnetwork(targets_only = T)

tar_make()