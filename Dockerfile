FROM ghcr.io/greyltc/archlinux-aur
LABEL maintainer="Greyson Christoforo <grey@christoforo.net>"
LABEL source="https://github.com/greyltc/some-docker-containers"

# can either be "" for latest release or "-git"
ENV FLAVOR=-git

# install cadquery
ADD install-cadquery.sh /root
RUN bash /root/install-cadquery.sh ${FLAVOR}
