FROM sonatype/nexus3:3.78.2

USER root

RUN microdnf install -y net-tools && \
    rm -rf /var/cache/yum && microdnf clean all

USER nexus