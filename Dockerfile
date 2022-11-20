FROM alpine:3.16

LABEL maintainer "Dschinghis Kahn"

COPY --from=containrrr/watchtower:1.5.1 /watchtower /

HEALTHCHECK CMD pidof watchtower || exit 1

ENTRYPOINT ["/watchtower"]
