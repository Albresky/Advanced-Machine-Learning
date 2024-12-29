<!--
 * Copyright (c) 2024 by Albresky, All Rights Reserved. 
 * 
 * @Author: Albresky
 * @Date: 2024-12-29 12:50:59
 * @LastEditTime: 2024-12-29 12:59:50
 * @FilePath: /Advanced-Machine-Learning/data/README.md
 * 
 * @Description: 
 * @Descripttion: The dataset folder
 * @LastEditors: Albresky
-->
# Dataset

You should download the following datasets and put them in this folder.

- [CIFAR-10](https://www.cs.toronto.edu/~kriz/cifar.html) -> `./cifar-10-python.tar.gz`
- [ChatGLM2-6B](https://github.com/THUDM/ChatGLM2-6B) -> `./chatglm2-6b/`
- [GSM8K](https://huggingface.co/datasets/openai/gsm8k) -> `./gsm8k/`
- [First and Last Names Database](https://github.com/philipperemy/name-dataset) -> `./name_dataset/`


The folder structure should look like this:

```
data/
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
├── cifar-10-python.tar.gz
├── gsm8k
│   ├── test-00000-of-00001.parquet
│   └── train-00000-of-00001.parquet
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