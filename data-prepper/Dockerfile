FROM amazon/opendistro-for-elasticsearch-data-prepper:latest
#FROM amazon/opendistro-for-elasticsearch-data-prepper:0.8.0-beta

# add envsubst
RUN yum install -y gettext

env JAVA_OPTS="-Dlog4j.configurationFile=log4j2.properties"


COPY log4j2.properties /usr/share/data-prepper/log4j2.properties
COPY data-prepper.jar /usr/share/data-prepper/data-prepper.jar
COPY pipelines.yaml /usr/share/data-prepper/pipelines.tmpl.yaml
COPY config.yaml    /usr/share/data-prepper/data-prepper-config.yaml
COPY run.sh /usr/share/data-prepper
RUN chmod +x /usr/share/data-prepper/run.sh

CMD /usr/share/data-prepper/run.sh
