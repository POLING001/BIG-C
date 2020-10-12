#!/bin/bash

### Testing Alignment on UAV Datasets

pushd optimize

# In `optimize/`, testing alignment on Village dataset using trained model, aligning every UAV image in dataset sequentially with the map:
python3 pose_opt.py sliding_window -image_dir ../village/frames/ -image_dir_ext *.JPG -motion_param_loc ../village/P_village.csv -map_loc ../village/map_village.jpg -model_path ../models/conv_02_17_18_1833.pth -opt_img_height 100 -img_h_rel_pose 1036.8 -opt_param_save_loc ../village/test_out.mat

# Testing alignment on Gravel-Pit dataset using trained model:
python3 pose_opt.py sliding_window -image_dir ../gravel_pit/frames/ -image_dir_ext *.JPG -motion_param_loc ../gravel_pit/P_gravel_pit.csv -map_loc ../gravel_pit/map_gravel_pit.jpg -model_path ../models/conv_02_17_18_1833.pth -opt_img_height 100 -img_h_rel_pose 864 -opt_param_save_loc ../gravel_pit/test_out.mat

popd

