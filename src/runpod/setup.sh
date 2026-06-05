#!/bin/bash
set -e

echo "=========================================="
echo " RunPod PyTorch 2.8.0 + Kaggle Version Pin"
echo "=========================================="

# Create working directories
mkdir -p /workspace/{data,models,outputs,mlruns}

echo ""
echo "[1/4] Installing MLflow + dependencies (pinned)..."
pip install mlflow==3.12.0 \
            mlflow-skinny==3.12.0 \
            mlflow-tracing==3.12.0 \
            databricks-sdk==0.110.0

echo ""
echo "[2/4] Installing evaluation libs (optional)..."
pip install deepeval==4.0.2 \
            portalocker==3.2.0 \
            posthog==7.15.0 \
            pyfiglet==1.0.4

echo ""
echo "[3/4] Installing core training packages (pinned from Kaggle)..."
pip install bitsandbytes==0.48.0
pip install trl==1.2.0
pip install xformers==0.0.35

echo ""
echo "[4/4] Installing heavy packages (flash-attn, mamba-ssm)..."
# These usually need compilation → use --no-build-isolation
pip install flash-attn==2.8.4 --no-build-isolation
pip install causal-conv1d==1.6.1 mamba-ssm==2.3.1 --no-build-isolation

echo ""
echo ">>> Installing Unsloth (latest from git - recommended for Nemotron-3-Nano)"
pip install "unsloth[colab-new] @ git+https://github.com/unslothai/unsloth.git"

echo ""
echo ">>> Installing unsloth-zoo (compatible version)"
pip install unsloth-zoo

echo ""
echo "✅ All packages installed successfully with Kaggle version pinning!"
echo ""
echo "You can now run your notebook or training script."