#!/bin/bash

function telegram() {
    xhost local:root 
    docker run --rm -it --name telegram \
    --cpuset-cpus 1 \
    --device /dev/snd \
    -e DISPLAY \
    -v /etc/localtime:/etc/localtime:ro \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $HOME/.TelegramDesktop:/root/.local/share/TelegramDesktop/ \
    -v $HOME/Downloads:/root/Downloads \
    -v $HOME/Pictures:/root/Pictures \
    strm/telegram
}
