#!/bin/bash

cat $(ls -t ~/.local/share/sqlmap/output/results* ) |  stdbuf -o0 grep -vE 'Target|unexploitable' | stdbuf -o0 sed -e 's|^[^/]//||' -e 's/==>//' -e '/^\s*$/d' -e 's/<==//' -e 's/:\b[0-9]\{2,3\}\b//' | stdbuf -o0 awk -F ',' '{print$1}' | stdbuf -o0 grep '^h'

