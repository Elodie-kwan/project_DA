models_stat_colnames <- c("Big classification tree", 
                          "Pruned classification tree", 
                          "Autoprune classification tree", 
                          "Logistic regression", 
                          "AIC reduced Logistic regression",
                          # "2-Nearest neighbor",
                          # "3-Nearest neighbor", 
                          "Linear support vector machine",
                          "Tuned linear support vector machine",
                          "Radial base support vector machine",
                          "Tuned radial base support vector machine",
                          "Hyperparameter tuned neural network 3 nodes",
                          "Gradient Boosting"
                          )


cbind(cm_bigct$overall,
      cm_ctprune$overall,
      cm_ctautoprune$overall,
      cm_logreg$overall, 
      cm_logregsel$overall,
      # cm_knn2$overall,
      # cm_knn3$overall,
      cm_linearsvm$overall,
      cm_linearsvm_tuned$overall, 
      cm_rbsvm$overall,
      cm_rbsvm_tuned$overall, 
      cm_nn3$overall, 
      cm_xgb$overall
      )

# 2) Pruned classification tree
#he accuracy of the classification tree model is not really good (0.564), however we see that the balanced accuracy (0.6345) is a little bit better but still not enough.

# 3) Autoprune classification tree
# The accuracy of the classification tree model is not really good (0.584) althought it is a little bit better than the one we fitted by hand. We also see that the balanced accuracy (0.6418) is a little bit better than its accuracy and the balanced accuracy of the other model, but still not enough.

# 4) Logistic regression
# From the confusion matrix summary, this model is better than the classification tree as the accuracy is higher (0.704) and that the balanced accuracy seems to be almost good as well ( 0.6852)

# 6) 2-NN 
# The accuracy (0.596) and the unbalanced accuracy (0.5063) are both too low. 

# 7) 3-NN
# Both the accuracy (0.636) and the balanced data (0.5100) improved a little bit with k = 3 compared to k = 2. 
# The accuracies might still be a bit low.

# 8) Linear SVM 
# The accuracy (0.692) and the balanced accuracy (0.6802) are lower than 0.75 which means that it might not be good enough.

# 10) Radial base SVM
# The accuracy is better, 70%, compared to 69% with the linear method.

# 11) Tuned radial base SVM
# We have an accuracy of 0.696 and a balanced accuracy of 0.6975. 

# 12) Hyperparameter tuned Neural network 3 nodes
# The accuracy of the neural network is of 81.61% 


KNNmodels_stat_colnames <- c("2-Nearest neighbor",
                             "3-Nearest neighbor",
                          
)

cbind(cm_knn2$overall,
      cm_knn3$overall,
      
      
)

