ARG BASE_IMAGE=debian:11.6-slim@sha256:98d3b4b0cee264301eb1354e0b549323af2d0633e1c43375d0b25c01826b6790

FROM ${BASE_IMAGE}

ENV REFRESHED_AT=2023-03-10

#x-release-please-start-version
LABEL Name="evantill/plantuml-cheerpj" \
      Maintainer="eric.vantillard@evaxion.fr" \
      Version="1.0.0"
#x-release-please-end

HEALTHCHECK CMD ["/app/healthcheck.sh"]

# Run as "root" for system installation.

USER root

RUN apt-get update \
 && apt-get -y install \
      python3 \
      python3-pip \
      wget \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# install cheerpj
ARG CHEERPJ_URL="https://d3415aa6bfa4.leaningtech.com/cheerpj_linux_2.3.tar.gz"
ARG CHEERPJ_TAR="cheerpj_linux_2.3.tar.gz"
ENV CHEERPJ_DIR=/opt/cheerpj

RUN mkdir -p /tmp/cheerpj/cheerpj && \
    cd /tmp/cheerpj && \
    wget "$CHEERPJ_URL" && \
    tar -xvf "$CHEERPJ_TAR" -C cheerpj --strip-components 1 && \
    mv cheerpj /opt

ENV PATH "$PATH:/opt/cheerpj"

# Copy files from repository.

COPY ./rootfs /

# Make non-root container.

USER 1001

# Runtime execution.

WORKDIR /app

ENTRYPOINT [ "/opt/cheerpj/cheerpjfy.py" ]