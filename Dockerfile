FROM alpine:latest

RUN apk add --no-cache curl

COPY dynu.sh /dynu.sh
RUN chmod +x /dynu.sh

ENV POLLINTERVAL=300

CMD ["/dynu.sh"]