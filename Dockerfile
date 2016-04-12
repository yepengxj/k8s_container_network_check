FROM alpine
RUN apk update && \
  apk upgrade && \
  apk add curl
COPY start.sh /start.sh
RUN chmod +x /start.sh 
ENV TERM xterm
CMD ["/start.sh"]

