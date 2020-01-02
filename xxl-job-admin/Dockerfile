FROM openjdk:8-jdk-alpine
MAINTAINER xuxueli

ENV XXL_JOB_LOG_ENABLED "true"
ENV XXL_JOB_IP_AUTO "true"

#ENV TZ=PRC
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ADD target/xxl-job-admin-*.jar /xxl-job-admin.jar

ENTRYPOINT ["sh","-c","java -jar /xxl-job-admin.jar"]