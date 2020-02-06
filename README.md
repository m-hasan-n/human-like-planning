
Human-like Planning

This is the "Human-like Planning (HLP)" project. Our objective in this project is to learn human planning skills from VR 
demonstrations and transfer these skills to robot motion planners. The VR dataset and the source code are released here. More information are given in the ICRA 2020 paper [1]. 

To go through the dataset and do some visualization, run: 
dataset_demo.m

To reproduce the same experiments in ICRA-2020 paper with training and testing the decision classifiers, run:
HLP_experiment_protocols(first_time, training_required, training_protocol)

Set 'first_time' flag to 1 for the first time you run this code.

Set 'training_required' flag to 1 only if you need to (re)train the decision classifiers. 

Set 'training_protocol' to either '80_20' or 'num_subjects_effect'.


For queries about the HLP algorithm, please contact Mohamed Hasan (m.hasan@leeds.ac.uk).
For queries about the VR dataset, please contact Matthew Warburton (m.warburton@leeds.ac.uk).  
 

If you used this code and/or dataset in academia, please cite the following work:  


[1] M. Hasan, M. Warburton, W. C. Agboh, M. R. Dogar, M. Leonetti, H. Wang, F. Mushtaq, M. Mon-Williams and A. G. Cohn, “Introducing a Human-like Planner for Reaching in Cluttered Environments, ” Accepted to ICRA 2020.

