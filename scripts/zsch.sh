#!/bin/sh
tmux new-session -d 'vim /home/vt/Github/vimwiki/school/index.md'
tmux split-window -h 'ranger --choosedir= /home/vt/Github/vimwiki/school/images'
tmux -2 attach-session -d
