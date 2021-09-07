python probing_flowers.py --uniter_data ../representations/uniter_org_base_flower.pickle --lxmert_data ../representations/lxmert_flowers_base.pickle --vit_data probing_representations/vit/flower.pickle --resnet_data probing_representations/resnet/flowers_rep.pickle --exp_name flowers_base --data coco --dec 0
python probing_flowers.py --uniter_data ../representations/uniter_org_vqa_flower.pickle --lxmert_data ../representations/lxmert_flowers_vqa.pickle --vit_data probing_representations/vit/flower.pickle --resnet_data probing_representations/resnet/flowers_rep.pickle --exp_name flowers_vqa --data coco --dec 0
python probing_flowers.py --uniter_data ../representations/uniter_org_nlvr_flower.pickle --lxmert_data ../representations/lxmert_flowers_nlvr.pickle --vit_data probing_representations/vit/flower.pickle --resnet_data probing_representations/resnet/flowers_rep.pickle --exp_name flowers_nlvr --data coco --dec 0

python explore_results_acc.py --path probing_results/flowers_base.pickle --output probing_results/flowers_base 
python explore_results_acc.py --path probing_results/flowers_vqa.pickle --output probing_results/flowers_vqa 
python explore_results_acc.py --path probing_results/flowers_nlvr.pickle --output probing_results/flowers_nlvr 