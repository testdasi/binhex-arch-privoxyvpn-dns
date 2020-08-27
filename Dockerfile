FROM amd64/debian:buster

RUN pacman -Syu \
    && pacman -S --noconfirm stubby

# clean stubby config
RUN mkdir -p /etc/stubby \
    && rm -f /etc/stubby/stubby.yml

# install stubby config
ADD stubby /tmp
RUN cd /tmp \
    && mkdir -p /etc/stubby \
    && cp -n ./stubby.yml /etc/stubby/ \
    && rm -f ./stubby.yml

EXPOSE 53/tcp
EXPOSE 53/udp

# run stubby in background
CMD stubby -g
