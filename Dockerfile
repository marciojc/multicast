FROM alfg/nginx-rtmp

ARG NGINX_VERSION 1.21.6
ARG NGINX_RTMP_VERSION 1.2.2

COPY run-stunnel.sh /run-stunnel.sh
RUN apk update && \
    apk add stunnel && \
    chmod a+x /run-stunnel.sh && \
    rm -rf /var/cache/* /tmp/*

# Expose RTMP port
EXPOSE 1935

# Expose HTTP port
EXPOSE 80

CMD /run-stunnel.sh
