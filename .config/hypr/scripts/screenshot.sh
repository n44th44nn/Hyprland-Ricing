#!/usr/bin/env bash

save_dir="$HOME/Pictures/Screenshots"
mkdir -p "$save_dir"
file="$save_dir/$(date +'%Y-%m-%d_%H-%M-%S').png"

case "$1" in
    area)
        geometry=$(slurp)
        # Exit quietly if selection was cancelled with Esc
        if [[ -n "$geometry" ]]; then
            grim -g "$geometry" - | tee "$file" | wl-copy --type image/png
            notify-send -i "$file" "Screenshot" "Area copied to clipboard and saved to Pictures"
        fi
        ;;
    full)
        grim - | tee "$file" | wl-copy --type image/png
        notify-send -i "$file" "Screenshot" "Full screen copied to clipboard and saved to Pictures"
        ;;
esac
