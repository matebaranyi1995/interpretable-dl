## Description of this folder (in "time" order)

The folder contains simulated datasets in order to test the notebooks.
The results may seem unrealistic due to the data generating process.

  * ```data_gen```: simulating synthetic but realistic data by the CTGAN network for testing purposes
  * ```dataprepare_for_NN_and_simul```: preprocessing the simulated data in order to use it for the training of our NN models
  * ```hyper_param_optimization_for_simu```: testing different hyper-parameter setups with the TPE algorithm implemented by the package hyperas
  * ```models_and_crossval_simulated```: based on earlier results
     *  cross-validating two different feed-forward neural networks
     *  training the final network
     *  comparison with XGBoost and RandomForest classifiers
     *  training bootstrapped bagging estimator based on the structure of the final network
  * ```interpretability_onbestmodel```: ToDo
    
### Data files
  * generated_data: output of the CTGAN
  * order_of_cols.txt: colum names of the previous dataset in order of appearance
  * data_clean_onehot_final_simulated.csv: output of the dataprepare... notebook based on the generated dataset
  * feature_types_final_simul.csv: names and types of the features
