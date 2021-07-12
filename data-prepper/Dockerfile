FROM amazon/opendistro-for-elasticsearch-data-prepper:latest
#FROM amazon/opendistro-for-elasticsearch-data-prepper:0.8.0-beta

# add envsubst
RUN yum install -y gettext

COPY data-prepper.jar /usr/share/data-prepper/data-prepper.jar
COPY pipelines.yaml /usr/share/data-prepper/pipelines.tmpl.yaml
COPY config.yaml    /usr/share/data-prepper/data-prepper-config.yaml
COPY run.sh /usr/share/data-prepper
RUN chmod +x /usr/share/data-prepper/run.sh

CMD /usr/share/data-prepper/run.sh
