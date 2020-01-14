FROM openjdk:8-jre

MAINTAINER ZhangYi
ENV XXL_JOB_LOG_ENABLED="true"
ENV XXL_JOB_IP_AUTO="true"

RUN \
    mkdir -p /opt/deploy

COPY target/xxl-job-admin-*.tar.gz /opt/deploy

ARG APP_VERSION
ENV APP_VERSION=${APP_VERSION:-v2.1.0}

RUN \
    tar -xzvf /opt/deploy/xxl-job-admin-*.tar.gz -C /opt/deploy && \
    /bin/rm -rf /opt/deploy/xxl-job-admin-*.tar.gz && \
    mkdir -p /opt/deploy/xxl-job-admin/logs  /opt/deploy/xxl-job-admin/data && \
    mv /opt/deploy/xxl-job-admin/xxl-job-admin-*.jar /opt/deploy/xxl-job-admin/xxl-job-admin.jar && \
    true

WORKDIR /opt/deploy/xxl-job-admin
ENTRYPOINT ["java", "-jar", "xxl-job-admin.jar" ]
