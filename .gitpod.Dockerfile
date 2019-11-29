FROM gitpod/workspace-full

RUN chmod -R 0777 /

RUN apt-get update --fix-missing && \
    apt-get install -y software-properties-common uidmap && \
    add-apt-repository -y ppa:projectatomic/ppa && \
    apt-get update -qq && \
    apt-get -qq -y install podman buildah && \
    apt-get clean 