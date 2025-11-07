MFA Forced Alignment

This repository contains the solution for performing forced alignment with the Montreal Forced Aligner.

### 1. Installation

This project uses Conda.

```bash
# Create and activate the environment
conda create -n mfa python=3.10 -y
conda activate mfa
```

Install MFA

```bash
conda install -c conda-forge montreal-forced-aligner
```


### 2. Data Preparation

The corpus is expected in the mfa_corpus/ directory, with matching .wav and .txt files. (Note: The corpus itself is not pushed to GitHub).

### 3. Running Alignment

The following commands will download the models and run the alignment. The results are saved in mfa_output/.

```bash
# Download models
mfa model download acoustic english_us_arpa
mfa model download dictionary english_us_arpa
```

Validate data (optional but recommended)
```bash
mfa validate ./mfa_corpus english_us_arpa
```
Run alignment
```bash
mfa align ./mfa_corpus english_us_arpa english_us_arpa ./mfa_output
```
