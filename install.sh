#! /bin/bash

## This is to create and run a docker container to run a program which will keep consuming memory till it crashes.

#IF you do HTTP to port 8089 you will get the free memory. Refresh the screen to get the lates free memory

docker build -t test/memoryeater .
# docker run -d --name memorytest -p 8089:80 test/memoryeater


