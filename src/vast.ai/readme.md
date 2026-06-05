#  How to Use on Vast.ai

# Create a new Pod using the PyTorch (Vast) template.
# (Recommended) Attach persistent storage if available.
# Upload setup.sh and run:Bash.

```bash
chmod +x setup.sh
./setup.sh
```

### Verification Commands (Run after setup)
#### After running setup.sh, verify everything is working:


```bash
source /workspace/venv/bin/activate

python -c "import torch; print('PyTorch:', torch.__version__)"
python -c "import bitsandbytes; print('bitsandbytes:', bitsandbytes.__version__)"
python -c "import mamba_ssm; print('mamba_ssm:', mamba_ssm.__version__)"
python -c "from unsloth import FastLanguageModel; print('Unsloth imported successfully')"
```
