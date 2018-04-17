FROM fluent/fluentd:v1.1-onbuild

USER root

WORKDIR /home/fluent
RUN fluent-gem install fluent-plugin-ping-message fluent-plugin-record-modifier

RUN mkdir /fluentd/log/apache /fluentd/log/application /fluentd/log/others
