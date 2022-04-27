#############################################
## The following loads the needed packages ##
#############################################

# load the required packages
packages <- c(
"tidyverse", "readxl", "Hmisc", "DataExplorer", 
"psych", "rpart", "gridExtra", "summarytools",
"dplyr",  "ggplot2" 
)

purrr::walk(packages, library, character.only = TRUE)
