# cleargrasp-docker
docker for cleargrasp


https://github.com/Shreeyak/cleargrasp

# Download data

Download the data:
a) Model Checkpoints (0.9GB) - Trained checkpoints of our 3 deeplabv3+ models.
b) Train dataset (Optional, 72GB) - Contains the synthetic images used for training the models. No real images were used for training.
c) Val + Test datasets (Optional, 1.7GB) - Contains the real and synthetic images used for validation and testing.

Extract these into the data/ directory or create symlinks to the extracted directories in data/.

```
root@orin:~/cleargrasp# find /usr -iname "*hdf5.h*"
/usr/include/hdf5/serial/hdf5.h
/usr/include/opencv4/opencv2/flann/hdf5.h
```
USER_LIBS=-L/usr/include/hdf5/serial/ -lhdf5_serial
USER_CFLAGS=-DRN_USE_CSPARSE "/usr/include/hdf5/serial/"


## depth2depth.sh 
s#x86_64#aarch64#
s/python /python3 /


sample_dataset
../data/cleargrasp-dataset-test-val/real-test

python3 eval_depth_completion.py -c config/config.yaml


# check if GPU is used
jtop
 
in most time GPU is not in use.

## SEE ALSO

https://automationtarou.hatenablog.com/entry/2023/01/22/210346
---
# todo 

元のrepository はx86_64 のアーキテクチャを前提としている。
そのため、Jetson で動作させるときには以下の改訂をすること。

sed 's/x86_64/aarch64/g' 

$ grep x86 $(find . -name "config.yaml*" -print)
./eval_depth_completion/config/config.yaml.sample:  pathExecutable: '../api/depth2depth/gaps/bin/x86_64/depth2depth'  # The path to the depth2depth executable.
./live_demo/config/config.yaml.sample:  pathExecutable: '../api/depth2depth/gaps/bin/x86_64/depth2depth'  # The path to the bash script that runs the depth2depth module.


$ grep x86 $(find . -name "Make*" -print)
./api/depth2depth/gaps/apps/depth2depth/Makefile:#USER_LIBS = -L/usr/lib/x86_64-linux-gnu/ -lhdf5_serial
./api/depth2depth/gaps/apps/depth2depth/Makefile:#USER_CFLAGS=-DRN_USE_CSPARSE /usr/lib/x86_64-linux-gnu/


## 動作確認状況
python3 eval_depth_completion.py -c config/config.yaml
の動作を確認した。
Jetson AGX Orin で 数日単位で実行時間がかかった。

-------------------------
実行結果が何なのかをわかりやすくすること

-------------------------

実行時間が日単位に遅いのをなんとかすること
C++のコードがGPUを使っていないように見える。


