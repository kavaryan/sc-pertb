###############################
### Set the root directory, which is where we can find the miR
### data on the local machine.

home <- Sys.getenv("HOME", unset = NA)
if (is.na(home)) stop("Cannot find 'HOME' from environment variable s.")

jinfo <- file.path(home, "Paths", "sc_drug_perturbation.json")
if (!file.exists(jinfo)) stop("Cannot locate file: '", jinfo, "'.\n", sep='')
library(rjson)
temp <- fromJSON(file = jinfo)
paths <- temp$paths

rm(home, jinfo, temp)

### Also need access tothe TCGA data areas fromth e ML4Bioinfo project.
### This creates a separate "tcgapaths" variable

#source(file.path("ML-TCGA-code", "00-paths.R"))
