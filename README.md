# Stanford CS336: Language Modeling from Scratch (Spring 2025)

Course materials downloaded from [stanford-cs336.github.io/spring2025](https://stanford-cs336.github.io/spring2025/).

## Course Structure

| Folder | Description |
|--------|-------------|
| **assignment1-basics** | Implement tokenizer, model architecture, optimizer; train a minimal Transformer LM |
| **assignment2-systems** | Profile/benchmark, FlashAttention2 in Triton, distributed training |
| **assignment3-scaling** | Understand Transformer components; fit scaling laws via training API |
| **assignment4-data** | Convert Common Crawl to pretraining data; filtering & deduplication |
| **assignment5-alignment** | SFT and RL for math reasoning; optional DPO alignment |
| **spring2025-lectures** | Lecture slides (PDFs in `nonexecutable/`) and interactive `.py` notebooks |

## Getting Started

1. **Activate the AI environment** (recommended):
   ```bash
   conda activate ai-llm
   ```

2. **Assignment 1** uses `uv` – see `assignment1-basics/README.md` for setup.

3. **Lectures**: PDFs are in `spring2025-lectures/nonexecutable/`; interactive Python lectures are in the repo root (e.g., `lecture_01.py`).

## GPU Compute

For assignments that need GPU, the course recommends cloud providers (RunPod, Lambda Labs, Paperspace, Together) for H100-class GPUs. Debug on CPU first to save cost.
