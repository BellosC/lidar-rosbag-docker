FROM ros:kinetic-ros-base

RUN apt-get update && apt-get install -y cmake git
RUN apt-get update && apt-get install -y libeigen3-dev libpcl-dev libsuitesparse-dev
RUN apt-get update && apt-get install -y ros-kinetic-pcl-ros
RUN rm -rf /var/lib/apt/lists/*

RUN git clone --depth=1 https://github.com/Livox-SDK/Livox-SDK.git
RUN git clone --depth=1 https://github.com/Livox-SDK/livox_ros_driver.git ws_livox/src

WORKDIR /Livox-SDK/build
RUN cmake .. && make -j4 && make install -j4

RUN /bin/bash -c '. /opt/ros/kinetic/setup.bash; cd /ws_livox; catkin_make -j"$(($(nproc)+1))"'

WORKDIR /
COPY entrypoint.sh /

ENV BAGNAME "lidar-bag"

ENTRYPOINT [ "./entrypoint.sh" ]