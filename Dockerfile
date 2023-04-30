FROM teddysun/xray:1.8.1

WORKDIR /root
COPY entry.sh /root/entry.sh
COPY config.json  /etc/xray/config.json
RUN chmod +x /root/entry.sh
ENV TZ=Asia/Tehran
ENTRYPOINT ["/root/entry.sh"]
CMD [ "/usr/bin/xray", "-config", "/etc/xray/config.json" ]