FROM centos:7.4.1708
MAINTAINER koori69

ADD turnserver-4.5.0.7.zip /turnserver/turnserver-4.5.0.7.zip
ADD turnserver.sh /turnserver.sh
RUN yum -y update && yum clean all \
    && yum -y install zip unzip sudo \
    && chmod +x turnserver.sh \
    && cd /turnserver \
    && unzip turnserver-4.5.0.7.zip \
    && chmod +x install.sh \
    && ./install.sh

ENTRYPOINT [ "/turnserver.sh" ]
