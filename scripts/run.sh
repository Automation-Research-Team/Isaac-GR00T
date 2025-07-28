#!/bin/sh
#PBS -q rt_HG
#PBS -l select=1
#PBS -l walltime=7:00:00
#PBS -P gag51454
#PBS -j oe
#PBS -k oed

cd ${PBS_O_WORKDIR}

source /etc/profile.d/modules.sh
cd /groups/gaf51379/physical-grounding/makihara/Isaac-GR00T
module load nvhpc/24.9
module load hpcx/2.20
source ~/.bashrc
conda activate gr00t


#python scripts/gr00t_finetune.py --dataset-path /groups/gaf51379/physical-grounding/datasets/lerobot_dataset/realur5demoenv1_1.0.0_lerobot --num-gpus 1 --batch-size 128 --data_config ur5rmb --output_dir ckpt

#python scripts/gr00t_finetune.py --dataset-path /groups/gaf51379/physical-grounding/datasets/lerobot_dataset/MujocoHsrTidyup_20250617_093824 --num-gpus 1 --batch-size 128 --data_config hsrrmb --output_dir ckpt_rmb --video-backend torchvision_av

python scripts/gr00t_finetune.py --dataset-path /groups/gaf51379/physical-grounding/datasets/lerobot_dataset/MujocoHsrTidyup_20250617_093824_mt --num-gpus 1 --batch-size 128 --data_config hsrrmb --output_dir ckpt_rmb_mt --video-backend torchvision_av