#!/bin/bash

java \
  -Xmx512M \
  -Djavax.net.ssl.keyStore=localhost.pkcs12 \
  -Djavax.net.ssl.keyStorePassword=changeit \
  -javaagent:jmx_prometheus_javaagent.jar=8888:exporter.yaml \
  -jar jmx_example_application.jar