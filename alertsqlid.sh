#!/bin/bash

tail -n 40 -f ~/.local/share/sqlmap/output/results* | stdbuf -o0 grep -vE 'Target|unexploitable' | stdbuf -o0 sed -e 's|^[^/]//||' -e 's/==>//' -e '/^\s*$/d' -e 's/<==//' -e 's/:\b[0-9]\{2,3\}\b//' | stdbuf -o0 awk -F ',' '{print$1}' | stdbuf -o0 grep '^h' | xargs -I@ sh -c "todiscord --webhook-url='$WEBHHOOKPERSONAL'  --username '$IDSCANNER' --title '@' --footer '$IDSCANNER' --timestamp --avatar 'https://i.imgur.com/JooGWlF.jpg' --author 'Found New SQL Injection' "


tail -n 40 -f   ~/.local/share/sqlmap/output/results* | stdbuf -o0 grep -vE 'Target|unexploitable' | stdbuf -o0 sed -e 's|^[^/]*//||' -e 's|/.*$||' -e 's/:\b[0-9]\{2,3\}\b//' -e 's/==>//' -e '/^\s*$/d' | xargs -I@ sh -c "todiscord --webhook-url='$WEBHHOOKPUBLIC'  --username '$IDSCANNER' --title '@' --footer '$IDSCANNER' --timestamp --avatar 'https://i.imgur.com/JooGWlF.jpg' --author 'Found New SQL Injection' ";
