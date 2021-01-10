FROM ghcr.io/greyltc/archlinux-aur
MAINTAINER Grey Christoforo <grey@christoforo.net>

# install rust-wasm
ADD install-rust-wasm.sh /root
RUN bash /root/install-rust-wasm.sh
