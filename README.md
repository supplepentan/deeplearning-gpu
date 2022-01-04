# deeplearning-gpu
# package

参考サイト:https://www.debian.org/distrib/packages

python3-dev

python3-pip

libgl1-mesa-dev
関連エラー：OpenCV - ImportError: libGL.so.1: cannot open shared object file: No such file or directory

libglib2.0-0
関連エラー：OpenCV - ImportError: libgthread-2.0.so.0: cannot open shared object file: No such file or directory

# Git
```
apt-get install git
```

# Python
```
update-alternatives --install /usr/bin/python python /lib/python3.8 1
update-alternatives --install /usr/bin/python python /lib/python3.9 2
update-alternatives --config python
ln -s /usr/bin/python3.8 /usr/bin/python
export PATH="$PATH:/usr/bin/python"
alias python="python3"
```
# Cython
```
ln -s /usr/bin/python3.8 /usr/bin/python
cd /tmp
git clone https://github.com/cython/cython
cd cython
python setup.py build
python setup.py install
make
```

# dlib
```
cd /tmp
apt -y update
apt -yV upgrade
apt -y install git
apt -y install cmake
apt -y install cmake-curses-gui
apt -y install cmake-gui
apt -y install curl
apt -y install wget
cd ..
git clone https://github.com/davisking/dlib
cd dlib
mkdir build
cd build
CUDA_PATH="/usr/local/cuda-11.3" CFLAGS="-I/usr/local/cuda-11.3/include" LDFLAGS="-L/usr/local/cuda-11.3/lib64" cmake -DUSE_AVX_INSTRUCTIONS=YES -DDLIB_USE_CUDA=YES ..
CUDA_PATH="/usr/local/cuda-11.3" CFLAGS="-I/usr/local/cuda-11.3/include" LDFLAGS="-L/usr/local/cuda-11.3/lib64" cmake --build .
make install
```
# zip unzip
```
apt install zip unzip
```

# OpenCV
libgl1-mesa-dev、libglib2.0-0がインストルーされていないとエラーが出ることがある。
```
pip install opencv-python
pip install opencv-contrib-python
```

# SWIG
```
apt -y install swig
```

# C/C++ コンパイラー，make，パッケージツール，その他のインストール
```
apt -y install build-essential gcc g++ make libtool texinfo dpkg-dev pkg-config
apt -y install libgmp10 libgmp3-dev libmpfr-dev libmpc-dev libppl-dev wget
```


