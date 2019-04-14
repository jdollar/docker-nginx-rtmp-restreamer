FROM dvdgiessen/nginx-rtmp-docker:latest

RUN apk --no-cache --update add \
  python \
  python-dev \
  py-pip \
  build-base \
  && pip install j2cli

COPY ./templates /templates
COPY ./configAndRun.sh /configAndRun.sh

ENTRYPOINT [ "/configAndRun.sh" ]
