
%% HLP_experiment_protocols
%This top function defines the required expereiment protocol 
%then calls the HLP_training and HLP_testing scripts  
%Training and Testing are performed on the organized environment structures
%available in the dataset

function hlp_experiment_protocols(first_time, training_required,...
    training_protocol, plot_plan)


%% Load the shared parameters 
shared_param = experiments_shared_params();

%% Saving/Loading training data
%doing that only once at the first time
curr_dir = pwd;
segmented_data_dir = fullfile(curr_dir,'segmented-demonstrations');

if(first_time)
    % saving extracted training data for all subjects to drive
    save_extracted_training_data(shared_param);
else
    % loading extracted training data for all subjects from drive to workspace
    
    fname = fullfile(segmented_data_dir , 'all_training_examples');
    load(fname)
end
    
%% Training and/or Testing
% 80% training and 20% testing with 5 subject combinations
% training_protocol = '80_20';
% train_protocol = 'num_subjects_effect';


trained_models_dir = fullfile(curr_dir,'trained-models');
    
    
if(training_required)
    %% Train the decision classifiers and save the trained models
    
    HLP_Training (trained_models_dir, training_protocol, shared_param,navi_examples,...
        navi_subject_ids,object_features,object_response,...
        object_subject_ids,neighbor_space_features,...
        object_moving_direction,hand_to_obj_direction,...
        target_to_obj_direction,object_dir_subject_ids,...
        current_config, next_config, dist_feat,...
        dir_feat,config_subject_ids,all_path_examples, path_subject_ids);
else
    %% Testing
    HLP_Testing(shared_param ,trained_models_dir, segmented_data_dir,...
        training_protocol, plot_plan);
end

end
