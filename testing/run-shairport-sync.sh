#!/bin/sh

echo "About to sleep for $STARTUP_DELAY_SEC second(s)"
sleep $STARTUP_DELAY_SEC
echo "Rise and shine!"

echo "starting shairport-sync ..."
#shairport-sync -a $SHAIRPORT_SYNC_NAME -- -d $SHAIRPORT_SYNC_AUDIO_DEVICE -m $SHAIRPORT_SYNC_MIXER
shairport-sync -a $SHAIRPORT_SYNC_NAME -- -d $SHAIRPORT_SYNC_AUDIO_DEVICE
