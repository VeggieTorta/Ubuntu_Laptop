#!/bin/sh
tmux new-session -d 'vim /home/vt/Dropbox/Vimwiki/School/index.md'
tmux split-window -h 'ranger --choosedir= /home/vt/Dropbox/Vimwiki/School/images'
tmux -2 attach-session -d
