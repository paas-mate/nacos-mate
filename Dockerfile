FROM ttbb/nacos:nake

WORKDIR /opt/nacos

COPY docker-build /opt/nacos/mate

CMD ["/usr/bin/dumb-init", "bash", "-vx", "/opt/nacos/mate/scripts/start.sh"]
