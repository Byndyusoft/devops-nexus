FROM sonatype/nexus3:3.38.1

RUN echo "nexus.onboarding.enabled=false" >> /opt/sonatype/nexus/etc/nexus-default.properties && \
    echo "nexus.security.randompassword=false" >> /opt/sonatype/nexus/etc/nexus-default.properties

ENV NEXUS_CASC_CONFIG=/opt/nexus-casc-config.yml

COPY ./nexus-casc-plugin-3.38.0-01-bundle.kar /opt/sonatype/nexus/deploy/
COPY ./default-nexus.yml /opt/nexus-casc-config.yml
