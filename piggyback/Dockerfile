from mikebrady/shairport-sync:3.3.7

COPY run-piggyback.sh /run-piggyback.sh
RUN chmod u+x /run-piggyback.sh

ENV STARTUP_DELAY_SEC 0
ENV SHAIRPORT_SYNC_AUDIO_DEVICE default
ENV SHAIRPORT_SYNC_NAME ShairPort-Sync
ENV SHAIRPORT_SYNC_MIXER default

ENTRYPOINT ["/run-piggyback.sh"]
