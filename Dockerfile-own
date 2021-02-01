from debian:buster-slim

RUN apt-get update
RUN apt-get install shairport-sync -y
RUN apt-get install avahi-daemon -y
RUN apt-get install dbus -y

RUN rm -rf /var/lib/apt/lists/*

ENV STARTUP_DELAY_SEC 0

ENV SHAIRPORT_SYNC_AUDIO_DEVICE default
ENV SHAIRPORT_SYNC_NAME ShairPort-Sync
ENV SHAIRPORT_SYNC_MIXER default

#RUN usermod -a -G shairport-sync shairport-sync

# Add the shairport-sync user to the pre-existing audio group, which has ID 29, for access to the ALSA stuff
##RUN	addgroup -gid 29 docker_audio
##RUN usermod -a  -g 29 
#RUN addgroup docker_audio

COPY run-shairport-sync.sh /run-shairport-sync.sh
RUN chmod u+x /run-shairport-sync.sh

ENTRYPOINT ["/run-shairport-sync.sh"]
