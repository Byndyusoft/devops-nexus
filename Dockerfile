FROM sonatype/nexus3:3.92.2

USER root

RUN apk update --no-cache && apk upgrade --no-cache && \
    apk add --no-cache --upgrade net-tools && \
    echo "nexus.onboarding.enabled=false" >> /opt/sonatype/nexus/etc/nexus-default.properties && \
    echo "nexus.security.randompassword=true" >> /opt/sonatype/nexus/etc/nexus-default.properties

USER nexus