# 简介

本仓库暂存 *BUPT-高级机器学习*  研究生课程的线上 Assignments。

# 目录结构

```shell
.
├── data
│   ├── chatglm2-6b
│   ├── glm-4-9b-chat-hf
│   ├── gsm8k
│   ├── Llama-2-13b-chat-hf
│   ├── Llama-2-13b-hf
│   ├── Llama-2-7b-chat-hf
│   ├── Llama-2-7b-hf
│   └── README.md
├── exper_a1
│   └── Assignment_A1.ipynb
├── exper_a2
│   ├── Assignment_A2.ipynb
│   └── cnn_cifar10.pth
├── exper_a3
│   ├── Assignment_A3_GAN.ipynb
│   ├── Assignment_A3_GAN.pdf
│   ├── c_generator.pth
│   ├── generator.pth
│   └── images
├── exper_a4
│   ├── Assignment_A4.ipynb
│   └── Assignment_A4.pdf
├── exper_a5
│   ├── Assignment_A5.ipynb
│   ├── Assignment_A5.pdf
│   ├── images
│   └── logs
├── Makefile
├── README.md
└── requirements.txt
```

# 如何导出

## 手动导出

**以 Assignment A1 为例：**
 
```shell
cd exper_a1

# 生成 .tex
jupyter nbconvert --to latex --template classic Assignment_A1.ipynb

# 修改 .tex 内部中文字体，使用 [WenQuanYi Zen Hei] 作为默认字体（需手动安装）
# 第一行 \documentclass[11pt]{article} 后续行添加
\usepackage{fontspec, xunicode, xltxtra}
\setmainfont{WenQuanYi Zen Hei}

# 修改 Title
\title{Assignment\_A1}
# 改为 AnyTitleYouWant
\title{Assignment A1 by ShiKai@2024xxx}


# 生成 .pdf
xelatex Assignment_A1.tex
```

## 使用 Makefile

*[注] make 过程中有 `Enter file name：` 的地方手动回车*

```shell
# 生成 全部作业
make all

# 生成 Assignment_A1.pdf
make a1

# 生成 Assignment_A2.pdf
make a2

# 生成 Assignment_A3_GAN.pdf
make a3_gan

# 生成 Assignment_A3_VAE.pdf
make a3_vae

# 生成 Assignment_A4.pdf
make a4

# 生成 Assignment_A5.pdf
make a5

# 清理生成的文件
make clean
```


