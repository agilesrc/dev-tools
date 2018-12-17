FROM centos:7

ENV NODE_VERSION 10 

RUN \
   yum -y install epel-release && \
   yum -y update && \
   yum install -y gcc python-devel curl python-pip python36-devel && \
   cd /tmp && pip install --upgrade pip && pip install setuptools -U && pip install awscli && pip install aws-sam-cli && \
   curl "https://rpm.nodesource.com/setup_${NODE_VERSION}.x" -o "setup_node.x" && \
   sh setup_node.x && yum -y install nodejs && ln -s /usr/bin/python3.6 /usr/bin/python3 && \
   yum clean all

#tools mappings
VOLUME /root/.aws
VOLUME /root/.npm

#work area
VOLUME /work
WORKDIR /work

EXPOSE 3000
