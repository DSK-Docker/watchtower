FROM alpine:3.18

LABEL maintainer "Dschinghis Kahn"

COPY --from=containrrr/watchtower:1.6.0 /watchtower /

HEALTHCHECK CMD pidof watchtower || exit 1

ENTRYPOINT ["/watchtower"]
