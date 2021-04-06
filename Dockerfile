FROM openjdk

# This is to create a java program which will consume memory and die after a while 
LABEL author="Daniel Ribeiro <daniel.r.junior@oracle.com>"

# Some variables we need
# You have to pass them via --build-arg while performing build
# of the container
#
# e.g.: 
# --build-arg jdk_location="https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz" \
# --build-arg profiler_pack_location=/tmp/profiler-server-linuxamd64.zip
#
ARG jdk_location=you_have_to_specify_jdk_location_via_argument
ENV jdk_location_bash $jdk_location


# Layout of /opt directories
# /opt
#  |-- ProfilerCode       - Java based code that will be profiled
#  |-- jdk                - JDK will be installed here
#  `-- profiler           - profiler libraries (created by NetBeans)
#
RUN mkdir -p /opt/profiler
RUN mkdir -p /opt/profilercode

# Adding Java Application
ADD run.sh /opt/run.sh
ADD MemoryEater.java /opt/profilercode

# Setup Profiler 
ADD profiler /opt/profiler

RUN chmod +x /opt/run.sh
CMD /opt/run.sh
