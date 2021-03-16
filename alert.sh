#!/bin/bash

tmux new -d -s alert
tmux new-window -t alert:1 -n alert1
tmux new-window -t alert:2 -n alert2
tmux send -t alert:alert1 'alertpersonal' ENTER
tmux send -t alert:alert2 'alertpublic' ENTER
result
