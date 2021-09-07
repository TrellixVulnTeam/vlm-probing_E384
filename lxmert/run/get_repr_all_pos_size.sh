# The name of experiment
name=lxmert

# Create dirs and make backup
output=snap/pretrain/$name
mkdir -p $output/src
cp -r src/* $output/src/
cp $0 $output/run.bash

# Pre-training
CUDA_VISIBLE_DEVICES=0 PYTHONPATH=$PYTHONPATH:./src \
    python src/pretrain/get_representations.py \
    --valid flickr_size \
    --model base \
    --tqdm --output $output ${@:2}

CUDA_VISIBLE_DEVICES=0 PYTHONPATH=$PYTHONPATH:./src \
    python src/pretrain/get_representations.py \
    --valid flickr_size \
    --model vqa \
    --tqdm --output $output ${@:2}

CUDA_VISIBLE_DEVICES=0 PYTHONPATH=$PYTHONPATH:./src \
    python src/pretrain/get_representations.py \
    --valid flickr_size \
    --model nlvr \
    --tqdm --output $output ${@:2}



CUDA_VISIBLE_DEVICES=0 PYTHONPATH=$PYTHONPATH:./src \
    python src/pretrain/get_representations.py \
    --valid flickr_size_dec \
    --model base \
    --tqdm --output $output ${@:2}

CUDA_VISIBLE_DEVICES=0 PYTHONPATH=$PYTHONPATH:./src \
    python src/pretrain/get_representations.py \
    --valid flickr_size_dec \
    --model vqa \
    --tqdm --output $output ${@:2}

CUDA_VISIBLE_DEVICES=0 PYTHONPATH=$PYTHONPATH:./src \
    python src/pretrain/get_representations.py \
    --valid flickr_size_dec \
    --model nlvr \
    --tqdm --output $output ${@:2}
    
CUDA_VISIBLE_DEVICES=0 PYTHONPATH=$PYTHONPATH:./src \
    python src/pretrain/get_representations.py \
    --valid flickr_pos \
    --model base \
    --tqdm --output $output ${@:2}

CUDA_VISIBLE_DEVICES=0 PYTHONPATH=$PYTHONPATH:./src \
    python src/pretrain/get_representations.py \
    --valid flickr_pos \
    --model vqa \
    --tqdm --output $output ${@:2}

CUDA_VISIBLE_DEVICES=0 PYTHONPATH=$PYTHONPATH:./src \
    python src/pretrain/get_representations.py \
    --valid flickr_pos \
    --model nlvr \
    --tqdm --output $output ${@:2}



CUDA_VISIBLE_DEVICES=0 PYTHONPATH=$PYTHONPATH:./src \
    python src/pretrain/get_representations.py \
    --valid flickr_pos_dec \
    --model base \
    --tqdm --output $output ${@:2}

CUDA_VISIBLE_DEVICES=0 PYTHONPATH=$PYTHONPATH:./src \
    python src/pretrain/get_representations.py \
    --valid flickr_pos_dec \
    --model vqa \
    --tqdm --output $output ${@:2}

CUDA_VISIBLE_DEVICES=0 PYTHONPATH=$PYTHONPATH:./src \
    python src/pretrain/get_representations.py \
    --valid flickr_pos_dec \
    --model nlvr \
    --tqdm --output $output ${@:2}