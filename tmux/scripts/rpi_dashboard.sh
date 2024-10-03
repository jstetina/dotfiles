#!/bin/bash

# Creates a tmux session with one windows and three panes for rpi managing

SESSION_NAME="RPI_dashboard"

tmux kill-session -t $SESSION_NAME 2> /dev/null # Kill previous session if exists

tmux new-session -d -s $SESSION_NAME

tmux split-window -v -t $SESSION_NAME:0 
tmux select-pane -t $SESSION_NAME:0.1
tmux split-window -h -t $SESSION_NAME:0.1

tmux send-keys -t $SESSION_NAME:0.0 'ssh triton' Enter 
tmux send-keys -t $SESSION_NAME:0.1 'ssh ironman' Enter
tmux send-keys -t $SESSION_NAME:0.2 'ssh tantalus' Enter

tmux attach -t $SESSION_NAME

