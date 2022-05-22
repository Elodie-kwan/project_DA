#############################################
## The following loads the needed packages ##
#############################################

# load the required packages
packages <- c(
"tidyverse", "readxl", "Hmisc", "DataExplorer", 
"psych", "rpart", "gridExtra", "summarytools",
"dplyr",  "ggplot2", "factoextra", "rpart.plot",
"FactoMineR", "adabag", "caret","e1071", 
"DALEX", "vip", "nnet",
"xgboost", "caTools", "Matrix",
"knitr", "kableExtra"
)

purrr::walk(packages, library, character.only = TRUE)




# function that calculates variable importance 
calculate_importance <- function(your_model_explainer, n_permutations = 10){
  imp <- model_parts(explainer = your_model_explainer,
                     B = n_permutations,
                     type = "ratio",
                     N = NULL)
  return(imp)
}
