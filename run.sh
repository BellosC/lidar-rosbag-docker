#!/bin/bash

echo "Launching lidar-rosbag-docker:latest"

docker run \
    -it \
    --rm \
    --volume=$HOME/shared_dir:/root/shared_dir:rw \
    --net=host \
    --env BAGNAME="${1:-lidar-bag}" \
    lidar-rosbag-docker:latest
