FROM ghcr.io/greyltc/archlinux-aur
LABEL maintainer="Greyson Christoforo <grey@christoforo.net>"
LABEL source="https://github.com/greyltc/some-docker-containers"

# install rust-wasm
ADD install-rust-wasm.sh /root
RUN bash /root/install-rust-wasm.sh
