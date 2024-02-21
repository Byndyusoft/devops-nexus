FROM sonatype/nexus3:3.65.0

USER root

RUN microdnf install -y net-tools && \
    rm -rf /var/cache/yum && microdnf clean all && \
    echo "nexus.onboarding.enabled=false" >> /opt/sonatype/nexus/etc/nexus-default.properties && \
    echo "nexus.security.randompassword=false" >> /opt/sonatype/nexus/etc/nexus-default.properties

RUN mkdir -p /opt/nexus-casc/
ENV NEXUS_CASC_CONFIG=/opt/nexus-casc/nexus-casc-config.yml
COPY ./default-nexus.yml /opt/nexus-casc/nexus-casc-config.yml

COPY ./nexus-casc-plugin-3.64.0-04-bundle.kar /opt/sonatype/nexus/deploy/

USER nexus