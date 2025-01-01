<!--
 * Copyright (c) 2024 by Albresky, All Rights Reserved. 
 * 
 * @Author: Albresky
 * @Date: 2024-12-29 12:50:59
 * @LastEditTime: 2025-01-01 12:13:48
 * @FilePath: /Advanced-Machine-Learning/data/README.md
 * 
 * @Description: 
 * @Descripttion: The dataset folder
 * @LastEditors: Please set LastEditors
-->

# Before you start

You should install `git-lfs` to make sure the LFS tracked files could be downloaded correctly.

```shell
sudo apt-get install git-lfs
git lfs install
```

If the repo you are cloning from Hugging Face or Github has large files, you should use `git lfs clone` to clone that repo.

FYI, the following command will clone the `glm-4-9b-chat-hf` repo from Hugging Face.

```shell
git lfs clone https://huggingface.co/THUDM/glm-4-9b-chat-hf/tree/main ./glm-4-9b-chat-hf
```


# Dataset

You should download the following datasets and put them in this folder.

- [CIFAR-10](https://www.cs.toronto.edu/~kriz/cifar.html) -> `./cifar-10-python.tar.gz`
- [ChatGLM2-6B](https://github.com/THUDM/ChatGLM2-6B) -> `./chatglm2-6b/`
- [GSM8K](https://huggingface.co/datasets/openai/gsm8k) -> `./gsm8k/`
- [First and Last Names Database](https://github.com/philipperemy/name-dataset) -> `./name_dataset/`
- [ChatGLM4](https://huggingface.co/THUDM/glm-4-9b-chat-hf/tree/main) -> `./glm-4-9b-chat-hf`
- [Llama-2-13B-Chat](https://huggingface.co/THUDM/llama-2-13b-chat-hf) -> `./Llama-2-13b-chat-hf`
- [Llama-2-7B-Chat](https://huggingface.co/THUDM/llama-2-7b-chat-hf) -> `./Llama-2-7b-chat-hf`

Finnally, the structure of this folder should be like this:

```
data
├── cifar-10-python.tar.gz
├── chatglm2-6b
│   ├── config.json
│   ├── configuration_chatglm.py
│   ├── modeling_chatglm.py
│   ├── MODEL_LICENSE
│   ├── pytorch_model-00001-of-00007.bin
│   ├── pytorch_model-00002-of-00007.bin
│   ├── pytorch_model-00003-of-00007.bin
│   ├── pytorch_model-00004-of-00007.bin
│   ├── pytorch_model-00005-of-00007.bin
│   ├── pytorch_model-00006-of-00007.bin
│   ├── pytorch_model-00007-of-00007.bin
│   ├── pytorch_model.bin.index.json
│   ├── quantization.py
│   ├── README.md
│   ├── tokenization_chatglm.py
│   ├── tokenizer_config.json
│   └── tokenizer.model
├── glm-4-9b-chat-hf
│   ├── config.json
│   ├── configuration.json
│   ├── generation_config.json
│   ├── LICENSE
│   ├── model-00001-of-00004.safetensors
│   ├── model-00002-of-00004.safetensors
│   ├── model-00003-of-00004.safetensors
│   ├── model-00004-of-00004.safetensors
│   ├── model.safetensors.index.json
│   ├── README.md
│   ├── README_zh.md
│   ├── tokenizer_config.json
│   └── tokenizer.json
├── gsm8k
│   ├── test-00000-of-00001.parquet
│   └── train-00000-of-00001.parquet
├── Llama-2-13b-chat-hf
│   ├── config.json
│   ├── generation_config.json
│   ├── gitattributes
│   ├── LICENSE.txt
│   ├── model-00001-of-00003.safetensors
│   ├── model-00002-of-00003.safetensors
│   ├── model-00003-of-00003.safetensors
│   ├── model.safetensors.index.json
│   ├── pytorch_model-00001-of-00003.bin
│   ├── pytorch_model-00002-of-00003.bin
│   ├── pytorch_model-00003-of-00003.bin
│   ├── pytorch_model.bin.index.json
│   ├── special_tokens_map.json
│   ├── tokenizer_config.json
│   ├── tokenizer.json
│   └── tokenizer.model
├── Llama-2-7b-chat-hf
│   ├── config.json
│   ├── generation_config.json
│   ├── gitattributes
│   ├── LICENSE.txt
│   ├── model-00001-of-00002.safetensors
│   ├── model-00002-of-00002.safetensors
│   ├── model.safetensors.index.json
│   ├── pytorch_model-00001-of-00002.bin
│   ├── pytorch_model-00002-of-00002.bin
│   ├── pytorch_model.bin.index.json
│   ├── README.md
│   ├── special_tokens_map.json
│   ├── tokenizer_config.json
│   ├── tokenizer.json
│   ├── tokenizer.model
│   └── USE_POLICY.md
├── name_dataset
│   ├── data
│   │   ├── AE.csv
│   │   ├── AF.csv
│   │   ├── AL.csv
│   │   ├── AO.csv
|   |   ├── ...
|   |   └── ZA.csv
│   └── description.txt
└── README.md
```
