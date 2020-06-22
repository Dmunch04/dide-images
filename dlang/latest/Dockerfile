FROM alpine:3.12
MAINTAINER Daniel Munch "contact@munchii.me"

# Install DMD and Dub + other useful stuff
RUN apk add --update alpine-sdk dmd dub openssl-dev zlib-dev

# Add user
RUN groupadd dide
RUN useradd -m -d /home/dide -g dide -s /bin/bash dide

# Download the code runner
ADD https://github.com/Dmunch04/dide-runner/releases/download/v1.0.0/runner /home/dide/runner
RUN chmod +x /home/dide/runner

USER dide
WORKDIR /home/dide
CMD ["/home/dide/runner"]
ENTRYPOINT "/home/dide/runner"
