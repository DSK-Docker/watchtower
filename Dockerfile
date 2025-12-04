FROM alpine:3.23

LABEL maintainer "Dschinghis Kahn"

COPY --from=containrrr/watchtower:1.7.1 /watchtower /

HEALTHCHECK CMD pidof watchtower || exit 1

ENTRYPOINT ["/watchtower"]
