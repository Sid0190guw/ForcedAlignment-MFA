#!/bin/bash
# This script runs the MFA alignment pipeline.

echo "--- 1. Downloading models ---"
mfa model download acoustic english_us_arpa
mfa model download dictionary english_us_arpa

echo "--- 2. Validating corpus ---"
# Assumes your data is in ./mfa_corpus
mfa validate ./mfa_corpus english_us_arpa

echo "--- 3. Running alignment ---"
# Aligns the corpus and saves results to ./mfa_output
mfa align ./mfa_corpus english_us_arpa english_us_arpa ./mfa_output

echo "--- Alignment complete. Results are in ./mfa_output ---"
