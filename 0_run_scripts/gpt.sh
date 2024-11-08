### https://huggingface.co/openai-community/gpt2
### openai-community/gpt2
### openai-community/gpt2-medium
# lm_eval --model hf \
#     --model_args "pretrained=openai-community/gpt2,max_length=1024" \
#     --tasks paloma_wikitext_103 \
#     --device cuda:0 \
#     --batch_size 16


### ValueError: Specified `attn_implementation="'eager'"` is not supported. The only possible arguments are `attn_implementation="eager"` (manual attention implementation), `"attn_implementation=flash_attention_2"` (implementation using flash attention 2), `"attn_implementation=sdpa"` (implementation using torch.nn.functional.scaled_dot_product_attention).


### /home/wxf/miniconda3/envs/lm-eval/bin/lm-eval
lm-eval \
    --model hf \
    --model_args 'pretrained=gpt2-medium,attn_implementation=eager' \
    --tasks wikitext \
    --device cuda:0 \
    --batch_size 16
