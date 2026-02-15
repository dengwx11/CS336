#!/bin/bash
# Download TinyStories and OpenWebText data for Assignment 1
# Run from assignment1-basics directory: bash download_data.sh

set -e

mkdir -p data
cd data

echo "Downloading TinyStories train..."
curl -L -o TinyStoriesV2-GPT4-train.txt "https://huggingface.co/datasets/roneneldan/TinyStories/resolve/main/TinyStoriesV2-GPT4-train.txt"

echo "Downloading TinyStories valid..."
curl -L -o TinyStoriesV2-GPT4-valid.txt "https://huggingface.co/datasets/roneneldan/TinyStories/resolve/main/TinyStoriesV2-GPT4-valid.txt"

echo "Downloading OpenWebText train..."
curl -L -o owt_train.txt.gz "https://huggingface.co/datasets/stanford-cs336/owt-sample/resolve/main/owt_train.txt.gz"
gunzip -f owt_train.txt.gz

echo "Downloading OpenWebText valid..."
curl -L -o owt_valid.txt.gz "https://huggingface.co/datasets/stanford-cs336/owt-sample/resolve/main/owt_valid.txt.gz"
gunzip -f owt_valid.txt.gz

cd ..
echo "Done! Data is in data/"
