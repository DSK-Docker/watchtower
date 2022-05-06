FROM containrrr/watchtower:1.4.0

LABEL maintainer "Dschinghis Kahn"

####################################################
######### INSTALLING BASE STUFF          ###########
####################################################
RUN apk add --no-cache procps

####################################################
######### CLEANUP                        ###########
####################################################
RUN rm -rf /tmp/* /root/.cache

HEALTHCHECK CMD pidof watchtower || exit 1
