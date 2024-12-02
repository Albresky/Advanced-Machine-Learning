BUILD_DIR := ./build
TEX := xelatex
CONVERT_CMD := jupyter nbconvert --to latex
PDF_CMD := $(TEX)


A1_DIR := ./exper_a1
A2_DIR := ./exper_a2
A3_DIR := ./exper_a3
A4_DIR := ./exper_a4

BUILD_A1_DIR := $(BUILD_DIR)/$(A1_DIR)
BUILD_A2_DIR := $(BUILD_DIR)/$(A2_DIR)
BUILD_A3_DIR := $(BUILD_DIR)/$(A3_DIR)
BUILD_A4_DIR := $(BUILD_DIR)/$(A4_DIR)

AUTHOR := ShiKai@2024xxx

.PHONY: a1 a2 a3 a4 all

a1:
	echo "Building Assignment A1..."
	mkdir -p $(BUILD_A1_DIR)
	$(CONVERT_CMD) $(A1_DIR)/Assignment_A1.ipynb --output-dir $(BUILD_A1_DIR)
	sed -i '1a\\\usepackage{fontspec, xunicode, xltxtra}\n\\setmainfont{WenQuanYi Zen Hei}' $(BUILD_A1_DIR)/Assignment_A1.tex
	sed -i 's|\\title{.*}|\\title{Assignment A1 by $(AUTHOR)}|' $(BUILD_A1_DIR)/Assignment_A1.tex
	$(PDF_CMD) -output-directory=$(BUILD_A1_DIR) $(BUILD_A1_DIR)/Assignment_A1.tex
	
a2:
	echo "Building Assignment A2..."
	mkdir -p $(BUILD_A2_DIR)
	$(CONVERT_CMD) $(A2_DIR)/Assignment_A2.ipynb --output-dir $(BUILD_A2_DIR)
	sed -i '1a\\\usepackage{fontspec, xunicode, xltxtra}\n\\setmainfont{WenQuanYi Zen Hei}' $(BUILD_A2_DIR)/Assignment_A2.tex
	sed -i 's|\\title{.*}|\\title{Assignment A2 by $(AUTHOR)}|' $(BUILD_A2_DIR)/Assignment_A2.tex
	$(PDF_CMD) -output-directory=$(BUILD_A2_DIR) $(BUILD_A2_DIR)/Assignment_A2.tex

a3_gan:
	echo "Building Assignment GAN of A3..."
	mkdir -p $(BUILD_A3_DIR)
	$(CONVERT_CMD) $(A3_DIR)/Assignment_A3_GAN.ipynb --output-dir $(BUILD_A3_DIR)
	sed -i '1a\\\usepackage{fontspec, xunicode, xltxtra}\n\\setmainfont{WenQuanYi Zen Hei}' $(BUILD_A3_DIR)/Assignment_A3_GAN.tex
	sed -i 's|\\title{.*}|\\title{Assignment A3-GAN by $(AUTHOR)}|' $(BUILD_A3_DIR)/Assignment_A3_GAN.tex
	$(PDF_CMD) -output-directory=$(BUILD_A3_DIR) $(BUILD_A3_DIR)/Assignment_A3_GAN.tex

a3_vae:
	echo "Building Assignment VAE of A3..."
	mkdir -p $(BUILD_A3_DIR)
	$(CONVERT_CMD) $(A3_DIR)/Assignment_A3_VAE.ipynb --output-dir $(BUILD_A3_DIR)
	sed -i '1a\\\usepackage{fontspec, xunicode, xltxtra}\n\\setmainfont{WenQuanYi Zen Hei}' $(BUILD_A3_DIR)/Assignment_A3_VAE.tex
	sed -i 's|\\title{.*}|\\title{Assignment A3-VAE by $(AUTHOR)}|' $(BUILD_A3_DIR)/Assignment_A3_VAE.tex
	$(PDF_CMD) -output-directory=$(BUILD_A3_DIR) $(BUILD_A3_DIR)/Assignment_A3_VAE.tex

a3: a3_gan a3_vae
	echo "Building Assignment A3..."

a4:
	echo "Building Assignment RNN of A4..."
	mkdir -p $(BUILD_A4_DIR)
	$(CONVERT_CMD) $(A4_DIR)/Assignment_A4.ipynb --output-dir $(BUILD_A4_DIR)
	sed -i '1a\\\usepackage{fontspec, xunicode, xltxtra}\n\\setmainfont{WenQuanYi Zen Hei}' $(BUILD_A4_DIR)/Assignment_A4.tex
	sed -i 's|\\title{.*}|\\title{Assignment A4-RNN by $(AUTHOR)}|' $(BUILD_A4_DIR)/Assignment_A4.tex
	$(PDF_CMD) -output-directory=$(BUILD_A4_DIR) $(BUILD_A4_DIR)/Assignment_A4.tex

all: a1 a2 a3 a4