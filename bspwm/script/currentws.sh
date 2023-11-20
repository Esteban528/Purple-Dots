#!/bin/bash

get_workspace_number() {
    current_workspace=$(bspc query -D -d focused --names)
    workspace_number=$(echo $current_workspace | tr -cd '[:digit:]')
    echo $workspace_number
}

get_workspace_number
