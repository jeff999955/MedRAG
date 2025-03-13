mamba create -n medrag python=3.10
mamba activate medrag

mamba install c-compiler=1.2.0 cxx-compiler=1.2.0 glm -c conda-forge -y
pip install torch torchvision torchaudio # for the latest, because xformers requires the latest version of torch (anger)
# Change the cuda version accordingly
mamba install nvidia/label/cuda-12.4.0::cuda nvidia/label/cuda-12.4.0::cuda-nvcc nvidia/label/cuda-12.4.0::cuda-toolkit -y
pip install -r requirements.txt