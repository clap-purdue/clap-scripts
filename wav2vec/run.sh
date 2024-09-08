python run_speech_recognition_ctc.py \
        --dataset_name="mozilla-foundation/common_voice_17_0" \
        --model_name_or_path="facebook/wav2vec2-large-xlsr-53" \
        --dataset_config_name="ja" \
        --output_dir="/scratch/gilbreth/USERNAME/wav2vec2-common_voice-ja" \
        --cache_dir="/scratch/gilbreth/USERNAME/" \
        --train_split_name="train+validation" \
        --eval_split_name="test" \
        --overwrite_output_dir \
        --num_train_epochs="15" \
        --per_device_train_batch_size="16" \
        --per_device_eval_batch_size="16" \
        --gradient_accumulation_steps="2" \
        --learning_rate="1e-5" \
        --warmup_steps="500" \
        --eval_strategy="steps" \
        --text_column_name="sentence" \
        --length_column_name="input_length" \
        --save_steps="400" \
        --eval_steps="100" \
        --layerdrop="0.0" \
        --save_total_limit="3" \
        --report_to="tensorboard" \
        --freeze_feature_encoder \
        --overwrite_output_dir \
        --gradient_checkpointing \
        --chars_to_ignore , ? . ! - \; \: \" “ % ‘ ” � \
        --fp16 \
        --trust_remote_code="True" \
        --group_by_length \
        --push_to_hub \
        --token="" \
        --do_train --do_eval