FROM gocd/gocd-agent-alpine-3.9:v20.5.0

USER root

RUN apk add --no-cache go musl-dev gcc build-base git

ENV GOROOT /usr/lib/go
ENV GOPATH /home/go

ENV PATH $GOPATH/bin:/usr/local/go/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
# WORKDIR $GOPATH
