#!/bin/sh

echo "About to sleep for $STARTUP_DELAY_SEC second(s)"
sleep $STARTUP_DELAY_SEC
echo "Rise and shine!"

echo "starting dbus-uuidgen ..."
dbus-uuidgen --ensure

cat /var/lib/dbus/machine-id

echo "starting dbus-daemon ..."
mkdir -p /var/run/dbus
dbus-daemon --config-file=/usr/share/dbus-1/system.conf --print-address

echo "starting avahi-daemon ..."
avahi-daemon --daemonize --no-chroot

echo "starting shairport-sync ..."
shairport-sync -a $SHAIRPORT_SYNC_NAME -- -d $SHAIRPORT_SYNC_AUDIO_DEVICE -C PCM
