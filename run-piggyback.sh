#!/bin/sh

echo "About to sleep for $STARTUP_DELAY_SEC second(s)"
sleep $STARTUP_DELAY_SEC
echo "Rise and shine!"

/start.sh $@
