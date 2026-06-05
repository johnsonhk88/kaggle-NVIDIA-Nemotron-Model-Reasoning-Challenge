#!/bin/bash
set -e

echo "=========================================="
echo " Vast.ai PyTorch Template + Setup"
echo "=========================================="

# Create working directories
# mkdir -p /workspace/{data,models,outputs,mlruns}

# Install basic tools (useful on Vast.ai)
# apt-get update -qq && apt-get install -y -qq tmux htop nvtop git wget 2>/dev/null || true

# === Create virtual environment (Recommended) ===
# VENV_PATH="/workspace/venv"
# if [ ! -d "$VENV_PATH" ]; then
#     echo "Creating Python virtual environment..."
#     python3 -m venv "$VENV_PATH"
# fi


# sh "$VENV_PATH/bin/activate"


export PATH=/usr/local/cuda-13.2/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-13.2/lib64:$LD_LIBRARY_PATH

# pip install causal-conv1d==1.6.1 --no-build-isolation
# pip install mamba-ssm==2.3.1 --no-build-isolation

echo ""
echo "[1/4] Upgrading pip..."
# Fix common system package conflicts (blinker, click, protobuf)
# pip install --upgrade --force-reinstall blinker click protobuf
pip install --ignore-installed blinker click protobuf


# pip install --upgrade pip setuptools wheel "huggingface_hub[cli]" hf_transfer
pip install --upgrade hf_transfer huggingface-hub #"huggingface_hub[cli]"


echo ""
echo "[2/4] Installing MLflow (pinned versions)..."
pip install mlflow==3.12.0 \
            mlflow-skinny==3.12.0 \
            mlflow-tracing==3.12.0 \
            databricks-sdk==0.110.0 --no-build-isolation  --no-deps --no-index 

echo ""
echo "[3/4] Installing core training packages (pinned)..."
pip install bitsandbytes==0.48.0 --no-build-isolation
pip install trl==1.2.0 --no-build-isolation
pip install xformers==0.0.35 --no-build-isolation
pip install pandas

echo ""
echo "[4/4] Installing heavy packages..."
# pip install "flash-attn>=2.7.0" --no-build-isolation  # can't install without cuda version nvcc -V 
# pip install  mamba-ssm==2.3.1 --no-build-isolation

echo ""
echo ">>> Installing Unsloth (latest from git - recommended for Nemotron-3-Nano)"
# pip install "unsloth[colab-new] @ git+https://github.com/unslothai/unsloth.git"
pip install unsloth==2026.5.5 --no-build-isolation
pip install unsloth-zoo==2026.5.5 --no-build-isolation

echo ""
echo "✅ Setup completed successfully!"
echo ""
echo "To activate the environment in new terminals:"
echo "source /workspace/venv/bin/activate"