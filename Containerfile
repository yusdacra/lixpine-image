FROM alpine:latest

RUN apk add curl
RUN curl --proto '=https' --tlsv1.2 -sSf -L https://install.lix.systems/lix | sh -s -- install linux --init none --no-confirm
ENV PATH="${PATH}:/nix/var/nix/profiles/default/bin"
