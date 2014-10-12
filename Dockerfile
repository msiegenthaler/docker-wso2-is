FROM dockerfile/java:openjdk-7-jdk
MAINTAINER msiegenthaler@inventsoft.ch

# download and unzip WSO2 Identity Server
RUN curl https://dl.dropboxusercontent.com/u/7426654/wso2is-5.0.0.zip > /opt/wso2is.zip && \
    unzip /opt/wso2is.zip -d /opt && \
    mv /opt/wso2is-5.0.0 /opt/wso2is && \
    rm -f /opt/wso2is.zip

EXPOSE 9443
CMD ["/opt/wso2is/bin/wso2server.sh"]