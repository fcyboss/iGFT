python src/train_bash.py \
    --stage sft \
    --model_name_or_path llama_path \
    --do_train \
    --dataset datasetname \
    --template default \
    --finetuning_type lora \
    --lora_target q_proj,v_proj \
    --output_dir llama_sft_checkpoint \
    --overwrite_cache \
    --per_device_train_batch_size 24 \
    --gradient_accumulation_steps 4 \
    --lr_scheduler_type cosine \
    --logging_steps 10 \
    --save_steps 1000 \
    --learning_rate 5e-5 \
    --num_train_epochs 5.0 \
    --plot_loss \
    --fp16 