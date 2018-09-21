read_csv <- function(f) read.csv(f, comment = "#", stringsAsFactors = FALSE)

rho <- read_csv("./densities.csv")
rho <- rho[rho$celsius == 20, ]
rho <- aggregate(density ~ cid, rho, mean)

solvents <- read_csv("./solvents.csv")
solvents <- merge(solvents, rho, all.x = TRUE)
usethis::use_data(solvents, overwrite = TRUE)
