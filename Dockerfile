FROM binhex/arch-privoxyvpn:latest

RUN pacman -Syu \
    && pacman -S --noconfirm stubby

# clean stubby config
RUN mkdir -p /etc/stubby \
    && rm -f /etc/stubby/stubby.yml

# install stubby config
ADD stubby /tmp

#Expose port
EXPOSE 53/tcp
EXPOSE 53/udp

# run init script
CMD ["/bin/bash", "/tmp/startup.sh"]
