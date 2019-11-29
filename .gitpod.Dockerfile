FROM gitpod/workspace-full

USER root

RUN apt-get update --fix-missing && \
    apt-get install -y software-properties-common uidmap && \
    add-apt-repository -y ppa:projectatomic/ppa && \
    apt-get update -qq && \
    apt-get -qq -y install podman buildah && \
    apt-get clean 
    
# RUN chmod -R 0777 /etc /tmp /run /var /lib /bin /opt /home
