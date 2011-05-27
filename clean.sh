#! /bin/bash
for software in `pacman -Qdt`
do
    sudo pacman -Rsn $software
done

