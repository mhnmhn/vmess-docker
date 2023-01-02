FROM teddysun/v2ray:5.2.0

WORKDIR /root
COPY entry.sh /root/entry.sh
COPY config.json  /etc/v2ray/config.json
RUN chmod +x /root/entry.sh
ENV TZ=Asia/Tehran
ENTRYPOINT ["/root/entry.sh"]
CMD [ "/usr/bin/v2ray", "run", "-config", "/etc/v2ray/config.json" ]