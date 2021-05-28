# lidar-rosbag-docker

> Docker image to get a rosbag file from a Livox Horizon LIDAR

## Usage

1.  ```sh
    git clone https://github.com/BellosC/lidar-rosbag-docker
    cd lidar-rosbag-docker
    ```
1. ```sh
    docker build -t lidar-rosbag-docker:latest .
    ```
3. Connect LIDAR to PC using Ethernet.

4. ```sh
    ./run.sh <name-for-bagfile>
    ```

5. Wait as much as you like.

6. <kbd>Ctrl</kbd> + <kbd>C</kbd>

7. Get your juicy bagfile at `$HOME/shared_dir`.