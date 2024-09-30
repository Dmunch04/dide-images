FROM alpine:3.20
MAINTAINER Daniel Munch "daniellmunch@gmail.com"

RUN apk add --update alpine-sdk build-base dmd dotnet8-sdk dotnet8-runtime openssl-dev zlib-dev libc6-compat git gcompat
RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing

RUN mkdir libscrypt
RUN cd libscrypt
RUN git clone https://github.com/technion/libscrypt.git
RUN cd libscrypt && make install
RUN cd ..

RUN addgroup -S didegroup
RUN adduser -S dide -G didegroup

ADD https://github.com/Dmunch04/dide-runner/releases/latest/download/runner /home/dide/runner
RUN chmod +x /home/dide/runner
RUN chown dide /home/dide/runner

USER dide
WORKDIR /home/dide
