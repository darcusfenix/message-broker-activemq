FROM openjdk:7
MAINTAINER Juan Crisóstomo

RUN wget http://www-eu.apache.org/dist//activemq/5.14.4/apache-activemq-5.14.4-bin.tar.gz

RUN tar zxvf apache-activemq-5.14.4-bin.tar.gz && \
      mkdir -p /data/activemq && \
      mv apache-activemq-5.14.4 /data/activemq

RUN cd /data/activemq/apache-activemq-5.14.4 && pwd && ls -la
WORKDIR /data/activemq/apache-activemq-5.14.4

CMD ["./bin/activemq", "console"]