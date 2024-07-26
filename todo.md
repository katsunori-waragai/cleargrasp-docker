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

