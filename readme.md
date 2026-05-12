# Kaggle Competition: NVIDIA Nemotron Model Reasoning Challenge

**Advance reasoning techniques using NVIDIA Nemotron open models on a novel benchmark**

**link:** <https://www.kaggle.com/competitions/nvidia-nemotron-model-reasoning-challenge>


---

## Overview

Develop techniques that improve reasoning accuracy using NVIDIA Nemotron models. Participants will experiment with prompting, data pipelines, and lightweight fine-tuning while evaluating their approaches on a new reasoning benchmark developed by NVIDIA Research.

### Description

Reasoning benchmarks are a useful way to measure progress on structured tasks. When approaches and results are shared openly, the community can compare methods, reproduce improvements, and iterate more effectively.

In this competition, participants will work from a shared **Nemotron 3 Nano** baseline and a novel reasoning benchmark developed by NVIDIA Research. Nemotron provides an open foundation for this challenge, including openly available models, datasets, and training recipes.

**You may experiment with:**

* Prompting strategies
* Data filtering and curation
* Synthetic data generation
* Reinforcement learning
* Lightweight fine-tuning
* Or other approaches of your choice

**Technical Requirement:** The final submission must produce a compatible **LoRA adapter** for the `Nemotron-3-Nano-30B` base model. Participants may use any training framework (Hugging Face, Unsloth, Axolotl, TRL, etc.).

---

## Evaluation

Submissions are evaluated based on **Accuracy** in solving the provided tasks.

* **Process:** The `NVIDIA Nemotron-3-Nano-30B` model is loaded with your LoRA adapter (rank ≤ 32) using the vLLM inference engine.
* **Format:** The model must place its final answer within a `\boxed{}` LaTeX command.
* **Grading:** A prediction is correct if it matches the ground truth exactly or within a relative numerical tolerance of $10^{-2}$.

### Metric Parameters

| Parameter | Value |
| --- | --- |
| `max_lora_rank` | 32 |
| `max_tokens` | 7680 |
| `top_p` | 1.0 |
| `temperature` | 0.0 |
| `max_num_seqs` | 64 |
| `gpu_memory_utilization` | 0.85 |
| `max_model_len` | 8192 |

---

## Timeline

* **March 16, 2026:** Start Date.
* **April 9, 2026:** Midpoint Cut-off Date.
* **June 8, 2026:** Entry & Team Merger Deadline.
* **June 15, 2026:** Final Submission Deadline.

*All deadlines are at 11:59 PM UTC.*

---

## Prizes

**Total Prize Pool:** $106,388 (including hardware)

### Final Leaderboard Prizes

* **1st Place:** $25,000 + 5 DGX Sparks
* **2nd Place:** $15,000 + 2 DGX Sparks
* **3rd Place:** $5,000 + 1 DGX Sparks

### Open Progress Prize (Midpoint Milestone)

* **Prize:** $5,000 + 1 DGX Sparks
* Awarded to the team with the highest leaderboard score as of **April 9, 2026**. Winners will be announced during **Cloud NEXT** (April 22-24, 2026).

### Open Contribution Awards

Recognizing techniques that advance reasoning performance (Top 10% rank required):

* **Best Data/Synthetic Data Method:** 1 DGX Spark
* **Best RL Method:** 1 DGX Spark
* **Best Fine-tuning Method:** 1 DGX Spark

*Note: To be eligible, teams must publish a public Kaggle notebook and solution write-up.*

---

## Compute

Powered by **NVIDIA Blackwell on Google Cloud**. Participants can utilize **G4 VMs** powered by **NVIDIA RTX PRO 6000 Blackwell Server Edition GPUs**, providing high-throughput inference and memory for serving open reasoning models.

---

## Citation

Jamil C Semaan, Jean-Francois Puget, Christof Henkel, Yi Dong, Addison Howard, Ashley Oldacre, Ryan Holbrook, Chris Alexiuk, and Rebecca Kao. *NVIDIA Nemotron Model Reasoning Challenge*. Kaggle, 2026. [https://kaggle.com/competitions/nvidia-nemotron-model-reasoning-challenge](https://kaggle.com/competitions/nvidia-nemotron-model-reasoning-challenge)