sudo add-apt-repository universe
sudo apt-get update
# Some general development libraries
sudo apt-get -y install build-essential make cmake cmake-curses-gui g++
# libav video input/output development libraries
sudo apt-get -y install libavformat-dev libavutil-dev libswscale-dev
# Video4Linux camera development libraries
sudo apt-get -y install libv4l-dev
# Eigen3 math development libraries
sudo apt-get -y install libeigen3-dev
# OpenGL development libraries (to allow creating graphical windows)
sudo apt-get -y install libglew1.6-dev
# GTK development libraries (to allow creating graphical windows)
sudo apt-get -y install libgtk2.0-dev
sudo apt-get install libopencv-dev build-essential checkinstall cmake pkg-config yasm libtiff4-dev libjpeg-dev libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev libxine-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev python-dev python-numpy libtbb-dev  libqt4-dev libgtk2.0-dev libfaac-dev libmp3lame-dev  libopencore-amrnb-dev libopencore-amrwb-dev  libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils doxygen git -y
cd ~
wget http://downloads.sourceforge.net/project/opencvlibrary/opencv-unix/3.1.0/opencv-3.1.0.zip
unzip opencv-3.1.0.zip
cd ~/opencv-3.1.0
mkdir build
cd build
cmake -DWITH_CUDA=ON -DCUDA_ARCH_BIN="3.2" -DCUDA_ARCH_PTX="" -DBUILD_TESTS=OFF -DBUILD_PERF_TESTS=OFF ..
for i in {1..40}
do
   sudo make -j8 install
done
