#!/bin/bash
EWW="sh $HOME/.config/eww/scripts/run"
WORKSPACE="sh $HOME/.config/bspwm/script/workspace.sh"

bspc desktop $1 $2 $3 $4 $5 $6 

#Not works

$EWW bar daemon update areas=\" $(echo sh $HOME/.config/bspwm/script/workspace.sh)\"
