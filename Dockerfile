FROM binhex/arch-privoxyvpn:latest

# install stubby to enable DNS-over-TLS
RUN pacman -Syu \
    && pacman -S --noconfirm stubby

# clean stubby config
RUN mkdir -p /etc/stubby \
    && rm -f /etc/stubby/stubby.yml

# install stubby config
RUN mkdir -p /temp
ADD stubby /temp

#Expose port
EXPOSE 53/tcp
EXPOSE 53/udp

# run init script
CMD ["/bin/bash", "/temp/startup.sh"]
