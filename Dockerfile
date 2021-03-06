ARG IMAGE
FROM ${IMAGE}

USER root

# install python
RUN apt-get -y update && \
    apt-get -y install python-pip && \
    pip install --upgrade pip

USER rundeck

ADD --chown=rundeck:root https://github.com/rundeck-plugins/docker/releases/download/1.4.1/docker-container-1.4.1.zip libext/
ADD --chown=rundeck:root https://github.com/rundeck-plugins/rundeck-s3-log-plugin/releases/download/v1.0.11/rundeck-s3-log-plugin-1.0.11.jar libext/
COPY --chown=rundeck:root remco /etc/remco
COPY --chown=rundeck:root plugins/* ./libext/

COPY --chown=rundeck:root lib docker-lib
RUN chmod +x docker-lib/generate-ssl.sh
RUN ./docker-lib/generate-ssl.sh
