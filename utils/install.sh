#!/bin/bash

set -ex

# Browser to make desktop icon for
browser=$1
# Root of the iota repo
location=$2
# New browser file name
name="iota-${browser}.desktop"

# Create the new iota-firefox desktop
cp default.desktop "${name}"

# Replace template words with actual location and browser values
sed -i "s|REPO|${location}|g" "${name}"
sed -i "s/BROWSER/${browser}/g" "${name}"

chmod 755 "${name}"
mv "${name}" ~/Desktop
