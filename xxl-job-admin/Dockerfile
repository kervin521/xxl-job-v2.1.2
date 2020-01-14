FROM openjdk:8-jre

MAINTAINER ZhangYi
ENV XXL_JOB_LOG_ENABLED="true"
ENV XXL_JOB_IP_AUTO="true"

ARG APP_VERSION
ENV APP_VERSION=${APP_VERSION:-v2.1.0}

ADD target/xxl-job-admin-*.jar /xxl-job-admin.jar

ENTRYPOINT ["sh","-c","java -jar /xxl-job-admin.jar"]