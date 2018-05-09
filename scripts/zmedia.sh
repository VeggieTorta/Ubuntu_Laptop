#!/bin/sh

tmux new-session -d 'cmus'
tmux split-window -v 'cava'
tmux -2 attach-session -d

