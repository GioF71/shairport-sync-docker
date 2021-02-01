#!/bin/sh

echo "About to sleep for $STARTUP_DELAY_SEC second(s)"
sleep $STARTUP_DELAY_SEC
echo "Rise and shine!"

#/start.sh $@

#-a aune-s6-airplay -- -d hw:DAC -c PCM

/start.sh -a $SHAIRPORT_SYNC_NAME -- -d $SHAIRPORT_SYNC_AUDIO_DEVICE -m $SHAIRPORT_SYNC_MIXER
