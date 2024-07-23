FROM nvcr.io/nvidia/l4t-pytorch:r35.2.1-pth2.0-py3
RUN apt-get update
# RUN apt-get install libhdf5-10 libhdf5-serial-dev libhdf5-dev libhdf5-cpp-11
RUN apt-get install -y libhdf5-serial-dev libhdf5-dev
RUN apt install libopenexr-dev zlib1g-dev openexr
# RUN apt install libglfw3-dev

RUN python3 -m pip install matplotlib opencv-python torch torchaudio torchvision wandb
RUN python3 -m pip install 'numpy<2' 
RUN python3 -m pip install timm==0.6.12
RUN python3 -m pip install scikit-image
RUN python3 -m pip install 'attrdict>=2.0.1'
RUN python3 -m pip install 'h5py>=2.10.0'
RUN python3 -m pip install 'imageio>=2.6.1'
RUN python3 -m pip install 'git+https://github.com/aleju/imgaug'
RUN python3 -m pip install 'numpy>=1.17.3'
RUN python3 -m pip install 'git+https://github.com/jamesbowman/openexrpython.git'
RUN python3 -m pip install 'oyaml>=0.9'
RUN python3 -m pip install 'pathlib>=1.0.1'
RUN python3 -m pip install 'Pillow>=6.2.0'
RUN python3 -m pip install 'scikit-image>=0.15.0'
RUN python3 -m pip install 'scipy>=1.3.1'
RUN python3 -m pip install 'Shapely>=1.6.4.post2'
RUN python3 -m pip install 'tensorboardX>=1.9'
RUN python3 -m pip install 'tensorflow>=1.14.0'
RUN python3 -m pip install 'termcolor>=1.1.0'
RUN python3 -m pip install 'torch>=1.3.0'
RUN python3 -m pip install 'torchvision>=0.4.1'
RUN python3 -m pip install 'tqdm>=4.36.1'
RUN python3 -m pip install 'open3d>=0.8.0.0'
RUN cd /root && git clone git@github.com:Shreeyak/cleargrasp.git
RUN cd /root/cleargrasp
WORKDIR /root/cleargrasp
# RUN python3 -m pip install -r requirements.txt

RUN apt update && apt install -y eog nano
COPY reinstall-opencv.sh /root/cleargrasp

