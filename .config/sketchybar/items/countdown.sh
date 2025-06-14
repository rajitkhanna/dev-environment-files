#!/bin/bash
sketchybar --add item countdown right \
           --set countdown update_freq=3600 \
                         script="$PLUGIN_DIR/countdown.sh" \
           --subscribe countdown system_woke

