#!/bin/bash
#source /home/bingxing2/ailab/scxlab0028/.bashrc
module purge
module load miniforge3/24.1
source /home/bingxing2/apps/package/pytorch/1.10.1+cu111_cp37/env.sh
source activate TensoRF

python train.py -s ../tandt/truck -m ./output_truck --eval
python render.py -s ../tandt/truck -m ./output_truck
python metrics.py -m ./output_truck
# salloc --gres=gpu:4 -p vip_gpu_ailab -A aim
# salloc: Granted job allocation 849466
# salloc: Waiting for resource configuration
# salloc: Nodes paraai-n32-h-01-agent-176 are ready for job

# salloc --gres=gpu:1 -p vip_gpu_ailab_low -A ailab
# salloc: Granted job allocation 802796
# salloc: Waiting for resource configuration
# salloc: Nodes paraai-n32-h-01-agent-142 are ready for job

# sbatch -N 1 --gres=gpu:2 -p vip_gpu_ailab -A aim run.sh
# 816340, 816436, 818667, 818698, 819350, 819353

# sbatch -N 1 --gres=gpu:1 -p vip_gpu_ailab_low -A ailab run.sh
# 663377

# python train.py -s ../tandt/truck -m ./output_truck2 --eval
# python render.py -s ../tandt/truck -m ./output_truck
# python metrics.py -m ./output_truck
