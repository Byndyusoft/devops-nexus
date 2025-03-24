FROM sonatype/nexus3:3.78.2

USER root

RUN microdnf install -y net-tools && \
    rm -rf /var/cache/yum && microdnf clean all && \
    echo "nexus.onboarding.enabled=false" >> /opt/sonatype/nexus/etc/nexus-default.properties && \
    echo "nexus.security.randompassword=true" >> /opt/sonatype/nexus/etc/nexus-default.properties

USER nexus