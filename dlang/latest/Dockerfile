FROM alpine:3.12
MAINTAINER Daniel Munch "contact@munchii.me"

RUN apk add --update alpine-sdk dmd dub openssl-dev zlib-dev

RUN groupadd dide
RUN useradd -m -d /home/dide -g dide -s /bin/bash dide

ADD https://github.com/Dmunch04/dide-runner/releases/download/xxx/runner /home/dide/runner
RUN chmod +x /home/dide/runner

USER dide
WORKDIR /home/dide
CMD ["/home/dide/runner"]
ENTRYPOINT "/home/dide/runner"
