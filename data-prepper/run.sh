#!/bin/bash

envsubst < /usr/share/data-prepper/pipelines.tmpl.yaml > /usr/share/data-prepper/pipelines.yaml

exec java $JAVA_OPTS -jar data-prepper.jar ${ENV_PIPELINE_FILEPATH} ${ENV_CONFIG_FILEPATH}
