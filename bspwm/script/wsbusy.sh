#!/bin/sh

# Verificar si se proporciona un argumento
if [ -z "$1" ]; then
    echo "Por favor, proporcione el número del workspace como un argumento."
    exit 1
fi

# Obtener el número del workspace
workspace=$1

# Unoccupied
un="0"

status=""
icon=""

# check if Occupied
occupied=$(bspc query -D -d .occupied --names | grep "$workspace")

# check if Focused
focused=$(bspc query -D -d focused --names | grep "$workspace")

# Verificar el estado del workspace
if [ -z "$occupied" ] && [ -z "$focused" ]; then
    status="empty"
    icon="󱙝"
elif [ -n "$focused" ]; then
    status="focused"
    icon="󰊠"
else
    status="occupied"
    icon="󰊠"
fi

echo "(eventbox :cursor \"hand\" (button :onclick \"bspc desktop -f $workspace\" (label :class \"small-ws status-$status\" :text \"$icon\")))"
