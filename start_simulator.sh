#!/bin/bash

docker run -d --runtime=nvidia -e NVIDIA_VISIBLE_DEVICES=0 -e SDL_VIDEODRIVER=offscreen -e SDL_HINT_CUDA_DEVICE=0 --net=host carlasim/carla:0.9.10 /bin/bash ./CarlaUE4.sh -ResX=800 -ResY=600 -nosound -windowed -opengl -carla-rpc-port=2000