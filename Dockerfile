from mikebrady/shairport-sync:3.3.7

ENV STARTUP_DELAY_SEC 0
ENV SHAIRPORT_SYNC_AUDIO_DEVICE default
ENV SHAIRPORT_SYNC_NAME ShairPort-Sync
ENV SHAIRPORT_SYNC_MIXER default

COPY run-piggyback.sh /run-piggyback.sh
RUN chmod u+x /run-piggyback.sh

ENTRYPOINT ["/run-piggyback.sh"]
