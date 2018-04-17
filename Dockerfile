FROM fluent/fluentd:v1.1-onbuild

USER root

WORKDIR /home/fluent
RUN fluent-gem install fluent-plugin-ping-message

RUN mkdir /fluentd/log/apache /fluentd/log/application /fluentd/log/others
