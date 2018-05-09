#!/bin/sh
tmux new-session -d 'vim'
tmux split-window -h 'ranger'
tmux -2 attach-session -d

