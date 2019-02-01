#!/bin/bash -ue

MOUNTPOINT=/media/frans/xxx-xxx-xxx
TARGET=$MOUNTPOINT/backups/$(hostname).borg
DATE=$(date --iso-8601)
BORG_OPTS="--progress --stats"

borg --version
echo "Starting backup for $DATE"

borg create $BORG_OPTS $TARGET::$DATE \
  ~/bin \
  ~/Desktop \
  ~/Documents \
  ~/Downloads \
  ~/Music \
  ~/Pictures \
  ~/Public \
  ~/Templates \
  ~/Videos \
  ~/.password-store

echo "Completed backup for $DATE"
