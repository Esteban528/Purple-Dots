#!/bin/bash

output_file="screenshot_$(date +%Y%m%d_%H%M%S).png"
screenshot_dir="$HOME/Pictures/Screenshots"

mkdir -p "$screenshot_dir"

scrot -s "$screenshot_dir/$output_file"
xclip -selection c -t image/png < "$screenshot_dir/$output_file"
