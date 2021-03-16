FROM alpine:3.12
MAINTAINER Daniel Munch "contact@munchii.me"

RUN apk add --update alpine-sdk dmd dub openssl-dev zlib-dev libc6-compat git
RUN apk add --no-cache -X http://dl-cdn.alpinelinux.org/alpine/edge/testing openjdk14

RUN mkdir libscrypt
RUN cd libscrypt
RUN git clone https://github.com/technion/libscrypt.git
RUN cd libscrypt && make install
RUN cd ..

RUN addgroup -S didegroup
RUN adduser -S dide -G didegroup

ADD https://github.com/Dmunch04/dide-runner/releases/download/v1.0.3/runner /home/dide/runner
RUN chmod +x /home/dide/runner
RUN chown dide /home/dide/runner

USER dide
WORKDIR /home/dide
