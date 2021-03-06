# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "rautdeepak55@gmail.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://172.20.10.3:8080 || exit 1

# tell docker what port to expose
EXPOSE 8080
