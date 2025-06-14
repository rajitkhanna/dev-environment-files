#!/bin/bash

# Get current date in seconds since epoch
CURRENT_DATE=$(date +%s)

# Demo day: June 11, 2025 at 8:00 AM
DEMO_DATE=$(date -j -f "%Y-%m-%d %H:%M:%S" "2025-06-11 08:00:00" +%s)

# Calculate days remaining
DAYS_REMAINING=$(( ($DEMO_DATE - $CURRENT_DATE) / 86400 ))

# Choose icon based on days remaining
if [ $DAYS_REMAINING -gt 30 ]; then
  ICON="􀧹"
elif [ $DAYS_REMAINING -gt 14 ]; then
  ICON="􀧱"
elif [ $DAYS_REMAINING -gt 7 ]; then
  ICON="􀧯"
elif [ $DAYS_REMAINING -gt 1 ]; then
  ICON="􀧮"
elif [ $DAYS_REMAINING -eq 1 ]; then
  ICON="􀎸"
elif [ $DAYS_REMAINING -eq 0 ]; then
  ICON="􀉉"
  DAYS_REMAINING="TODAY!"
else
  ICON="􀀄"
  DAYS_REMAINING="PAST!"
fi

# Update sketchybar item
sketchybar --set $NAME icon="$ICON" label="$DAYS_REMAINING"
