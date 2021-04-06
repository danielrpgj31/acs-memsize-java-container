#!/bin/bash

export PATH=${PATH}:${JAVA_HOME}/bin

export PROFILER_FLAG="-XX:+UseLinuxPosixThreadCPUClocks -agentpath:/opt/profiler/lib/deployed/jdk16/linux-amd64/libprofilerinterface.so=/opt/profiler/lib,5140"

export JAVA_MEMORY_SETTINGS="-Xms2G -Xmx2G"

cd /opt/profilercode

cat << EOF
      ***************************************************

           https://github.com/drjunior/ProfilerDocker

      ***************************************************

        NetCAT Profiler testing server
        -----------------------------------------------

        Your remote application will start pretty soon.

        It will wait for you to attach at

                         localhost:5140

        If, for some reasons, you want to use different
        port, make sure to call docker following way

        > docker run -p \$PORT_NO_YOU_WANT:5140 profiler

        To terminate this session, press: Ctrl-C
        
        -----------------------------------------------

EOF

javac MemoryEater.java
java ${PROFILER_FLAG} ${JAVA_MEMORY_SETTINGS} -cp . MemoryEater