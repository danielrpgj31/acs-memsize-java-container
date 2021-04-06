# Memorykiller

###### Memory eating java code with dockerised.
######  This will create and run as a docker container 
######  Internally its  run a program which will keep consuming memory till it crashes.

## Installation

#### 1. Download using git clone & run install.sh

```
git clone https://github.com/danielrpgj31/memorykiller
chmod 755 install.sh
./install.sh
```

######  IF you do HTTP to port 89 you will get the free memory. 
######  Refresh the screen to get the lates free memory

```
docker build -t test/memoryeater .
docker run -d --name memorytest -p 8089:80 test/memoryeater
```

######  You can see the memory utilization every 2 seconds
```
docker logs memorytest
```
######  If you want different rates please feel free to edit MemoryEater.java
######  After edit MemoryEater.java, you need to recompile.
