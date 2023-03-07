FROM ns1labs/flame:0.12.0-master@sha256:a715c2cf864d5ee18f5339d167d6e4edd5efc953eceb5f033c57d86f99a2879d as source

FROM ubuntu:22.04@sha256:b2175cd4cfdd5cdb1740b0e6ec6bbb4ea4892801c0ad5101a81f694152b6c559

COPY --from=source /usr/local/bin/flame /usr/local/bin/flame

ENV RUNTIME_DEPS "libldns3 libuv1 nghttp2"

RUN \
  apt-get update && \
  apt-get install -y --no-install-recommends $RUNTIME_DEPS && \
  apt-get clean && \
  rm -rf /var/lib/apt/

ENTRYPOINT ["/usr/local/bin/flame"]
