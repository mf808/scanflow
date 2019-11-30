#!/bin/bash

# turn on bash's job control
set -m

#start first instance of watcher
iwatch -c "ocrmypdf -l deu %f %f" -e close_write -t  "\.((pdf)|(PDF))$" /inbox/1 &

# start iwatch to mopnitor direcotry
iwatch -c "ocrmypdf -l deu %f %f" -e close_write -t  "\.((pdf)|(PDF))$" /inbox/2 &

fg %1
