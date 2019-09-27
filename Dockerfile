FROM jgriffincmh614/basicboxphp

RUN addgroup -g 1000 -S www-data \
 && adduser -u 1000 -D -S -G www-data www-data

RUN apk update && \
    apk fetch && \
    apk upgrade

RUN sed -i -e 's/v[[:digit:]]\..*\//edge\//g' /etc/apk/repositories
#RUN apk upgrade --update-cache --available

RUN apk update && \
    apk fetch && \
    apk add elixir

ENTRYPOINT ["/bin/bash"]
