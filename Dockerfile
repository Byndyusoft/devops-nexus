FROM sonatype/nexus3:3.38.1

USER root

RUN yum install -y net-tools && \
    rm -rf /var/cache/yum && yum clean all && \
    echo "nexus.onboarding.enabled=false" >> /opt/sonatype/nexus/etc/nexus-default.properties && \
    echo "nexus.security.randompassword=false" >> /opt/sonatype/nexus/etc/nexus-default.properties

RUN mkdir -p /opt/nexus-casc/
ENV NEXUS_CASC_CONFIG=/opt/nexus-casc/nexus-casc-config.yml
COPY ./default-nexus.yml /opt/nexus-casc/nexus-casc-config.yml

COPY ./nexus-casc-plugin-3.38.0-01-bundle.kar /opt/sonatype/nexus/deploy/

USER nexus