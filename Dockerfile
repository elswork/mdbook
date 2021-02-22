ARG BASEIMAGE=rust:1
FROM ${BASEIMAGE} as build-env
WORKDIR /app
RUN cargo install mdbook --verbose

#RUN apk add --no-cache rust cargo && \
#    cargo install mdbook

FROM gcr.io/distroless/cc

ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL mantainer="Eloy Lopez <elswork@gmail.com>" \
    org.label-schema.build-date=$BUILD_DATE \
    org.label-schema.name="mdbook" \
    org.label-schema.description="Create book from markdown files. Like Gitbook but implemented in Rust" \
    org.label-schema.url="https://deft.work/mdbook" \
    org.label-schema.vcs-ref=$VCS_REF \
    org.label-schema.vcs-url="https://github.com/elswork/mdbook" \
    org.label-schema.vendor="Deft Work" \
    org.label-schema.version=$VERSION \
    org.label-schema.schema-version="1.0"

COPY --from=build-env /usr/local/cargo/bin/mdbook* /bin/
CMD ["/bin/mdbook"]

#SHELL ["/bin/ash", "-eo", "pipefail", "-c"]
#COPY --from=builder /root/.cargo/bin/mdbook /usr/bin/mdbook

#WORKDIR /data
#ENTRYPOINT [ "/usr/bin/mdbook" ]
