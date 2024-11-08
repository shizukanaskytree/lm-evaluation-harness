lm_eval --model hf \
    --model_args pretrained=google-bert/bert-base-uncased \
    --tasks glue \
    --device cuda:0 \
    --batch_size 8

