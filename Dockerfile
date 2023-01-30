FROM alpine:3.17

LABEL maintainer "Dschinghis Kahn"

COPY --from=containrrr/watchtower:1.5.3 /watchtower /

HEALTHCHECK CMD pidof watchtower || exit 1

ENTRYPOINT ["/watchtower"]
