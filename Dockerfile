FROM alpine:3.15

LABEL maintainer "Dschinghis Kahn"

COPY --from=containrrr/watchtower:1.4.0 /watchtower /

HEALTHCHECK CMD pidof watchtower || exit 1

ENTRYPOINT ["/watchtower"]
