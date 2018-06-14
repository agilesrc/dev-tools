FROM centos:7

ENV NODE_VERSION 9

RUN \
   yum -y update && \
   yum install -y curl && \
   cd /tmp && curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && \
   python get-pip.py && pip install awscli && pip install aws-sam-cli && \
   curl "https://rpm.nodesource.com/setup_${NODE_VERSION}.x" -o "setup_9.x" && \
   sh setup_9.x && yum -y install nodejs && \
   yum clean all

#tools mappings
VOLUME /root/.aws
VOLUME /root/.npm

#work area
VOLUME /work
WORKDIR /work

EXPOSE 3000
