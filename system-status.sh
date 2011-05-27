#! /bin/bash
sudo smartctl --all /dev/sda | grep Load_Cycle
echo ------------------
sudo hddtemp /dev/sda

sudo hdparm -B 254 /dev/sda
