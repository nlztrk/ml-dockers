# ML Dockers
Got tired of wrangling CUDA-cuDNN-Torch-TensorFlow dependencies? I tried to get you covered. You can set-up your environment easily with a few steps.

## Steps
**Warning:** You should replace `YOURIMAGENAME` with the name you desire for your environment at the later steps.

### 1. Install Docker and NVIDIA Container Toolkit
- Docker Installation: [Link](https://docs.docker.com/engine/install/)
- NVIDIA Container Toolkit Installation: [Link](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker)

### 2. Clone The Repository
### 3. Build Your Docker Environment
Just go to the root folder of the repository and execute the following lines in your terminal.
#### 3.1. Torch Environment
```
docker build -f torchenv.Dockerfile -t YOURIMAGENAME .
```
### 4. Just Run
You can simply run your environment with:
```
docker run --gpus all -it --rm YOURIMAGENAME
```
### 4.1. Run w/ Volume Mounting & Jupyter Server
You can add these lines to your `~/.bashrc`:
```
djupyter() {
docker run -v $PWD:/tmp/working -w=/tmp/working -p 8888:8888 --gpus all --rm -it YOURIMAGENAME jupyter notebook --no-browser --ip="0.0.0.0" --notebook-dir=/tmp/working --allow-root
}
```
After resetting all your terminals you can simply open a new terminal then type:
```
djupyter
```

and voila! You've just opened your docker, mounted your current folder and started a Jupyter server!
