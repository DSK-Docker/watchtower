FROM alpine:3.24

LABEL maintainer "Dschinghis Kahn"

COPY --from=nickfedor/watchtower:1.19.0 /watchtower /

HEALTHCHECK CMD pidof watchtower || exit 1

ENTRYPOINT ["/watchtower"]
