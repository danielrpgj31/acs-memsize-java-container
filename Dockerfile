FROM openjdk
LABEL Daniel Ribeiro <daniel.r.junior@oracle.com> 
# This is to create a java program which will consume memory and die after a while

COPY MemoryEater.class  /
WORKDIR /
# RUN apk add --update nginx
# RUN yum-config-manager --enable ol7_software_collections && yum install -y  nginx
# COPY default /etc/nginx/sites_enabled/ 

CMD /usr/bin/java -Xmx512M MemoryEater
#CMD [ /bin/bash ]
