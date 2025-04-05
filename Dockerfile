FROM alpine:latest

RUN apk add --no-cache curl

COPY dynu.sh /dynu.sh

RUN chmod +x /dynu.sh

# Default poll interval
ENV POLLINTERVAL=300

CMD while true; do /dynu.sh; sleep $POLLINTERVAL; done

