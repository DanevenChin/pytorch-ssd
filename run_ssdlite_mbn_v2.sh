# 训练代码
python train_ssd.py \
--dataset_type voc  \
--datasets ~/work/YOLOv3/datasets/VOC/VOCtrainval_06-Nov-2007/VOCdevkit/VOC2007 ~/work/YOLOv3/datasets/VOC/VOCtrainval_11-May-2012/VOCdevkit/VOC2012 \
--validation_dataset ~/work/YOLOv3/datasets/VOC/VOCtest_06-Nov-2007/VOCdevkit/VOC2007 \
--net mb2-ssd-lite \
--base_net models/mb2-imagenet-71_8.pth  \
--scheduler cosine \
--lr 0.01 \
--t_max 200 \
--validation_epochs 5 \
--num_epochs 20

# 运行demo
python run_ssd_example.py \
mb2-ssd-lite \
models/mb2-ssd-lite-mp-0_686.pth \
models/voc-model-labels.txt \
/home/qindanfeng/work/YOLOv3/datasets/coco2014/val2014/COCO_val2014_000000000042.jpg

# 性能评估
python eval_ssd.py \
--net mb2-ssd-lite  \
--dataset ~/work/YOLOv3/datasets/VOC/VOCtest_06-Nov-2007/VOCdevkit/VOC2007 \
--trained_model models/mb2-ssd-lite-mp-0_686.pth \
--label_file models/voc-model-labels.txt