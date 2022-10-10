python -m torch.distributed.launch --nproc_per_node=1 --master_port 18211 --use_env main_distributed.py --model regnet_x_1_6gf --epochs 100 --batch-size 256 --wd 0.00005 --lr 0.01 --lr-scheduler=cosineannealinglr --lr-warmup-method=linear --lr-warmup-epochs=5 --lr-warmup-decay=0.1 --prune --cache-dataset --method group_sl --global_pruning --sentinel_perc 0.5 --pretrained --output-dir run/imagenet_v2/regnet_x_1_6gf_gsl --target_flops 0.8 --max_ch_sparsity 0.8 --sl_epochs 30 --sl_lr 0.08 --sl_lr_step_size 10 --cache-dataset --reg 1e-4