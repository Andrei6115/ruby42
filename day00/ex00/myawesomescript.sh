#/bin/sh
curl --head $1 2>&- | grep "Location" | cut -b 11-