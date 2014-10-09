FROM dockerfile/java:openjdk-7-jdk
MAINTAINER msiegenthaler@inventsoft.ch

# download and unzip WSO2 Identity Server
RUN wget -O /opt/wso2is.zip /opt/wso2is.zip https://dl.dropboxusercontent.com/u/7426654/wso2is-5.0.0.zip && \
    unzip /opt/wso2is.zip -d /opt && \
    mv /opt/wso2is-5.0.0 /opt/wso2is && \
    rm /opt/wso2is.zip

EXPOSE 9443
CMD ["/opt/wso2is/bin/wso2server.sh"]