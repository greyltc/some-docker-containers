FROM ghcr.io/greyltc/rust-wasm
LABEL maintainer="Greyson Christoforo <grey@christoforo.net>"
LABEL source="https://github.com/greyltc/some-docker-containers"

# install trunk
ADD install-trunk.sh /root
RUN bash /root/install-trunk.sh
