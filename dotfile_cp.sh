#!/bin/sh

basePath=$(cd $(dirname $0); pwd)

if [ "$1" = "OSX" ]; then
    echo OSX
    cp $basePath/.bashrc_osx ~/.bashrc
else
    echo LINUX
    cp $basePath/.bashrc ~/.
fi

cp $basePath/.bash_profile ~/.
cp $basePath/.vimrc ~/.
cp $basePath/.tmux.conf ~/.
cp $basePath/.tmux_weather.sh ~/.
cp $basePath/.gitconfig ~/.

echo "copied!"

