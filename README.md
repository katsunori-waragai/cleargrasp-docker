# cleargrasp-docker
docker for cleargrasp


https://github.com/Shreeyak/cleargrasp

# Download data

Download the data:
a) Model Checkpoints (0.9GB) - Trained checkpoints of our 3 deeplabv3+ models.
b) Train dataset (Optional, 72GB) - Contains the synthetic images used for training the models. No real images were used for training.
c) Val + Test datasets (Optional, 1.7GB) - Contains the real and synthetic images used for validation and testing.

Extract these into the data/ directory or create symlinks to the extracted directories in data/.


root@waragai-orin:~/cleargrasp# find /usr -iname "*hdf5.h*"
/usr/include/hdf5/serial/hdf5.h
/usr/include/opencv4/opencv2/flann/hdf5.h

USER_LIBS=-L/usr/include/hdf5/serial/ -lhdf5_serial
USER_CFLAGS=-DRN_USE_CSPARSE "/usr/include/hdf5/serial/"


## depth2depth.sh 
s#x86_64#aarch64#
s/python /python3 /

## SEE ALSO

https://automationtarou.hatenablog.com/entry/2023/01/22/210346

