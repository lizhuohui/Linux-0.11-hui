#!/bin/bash 

gnome-terminal -x bash -c "qemu-system-x86_64 -m 16M -L ./ -boot a -fda Image -hda hdc-0.11.img -s -S"

gnome-terminal -x bash -c "gdb ./tools/system -x debug.cmd"
