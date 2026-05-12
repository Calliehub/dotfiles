#!/bin/bash

if [ `hostname` == "dockclaude" ]; then
  # containerized Claude with username and paths mirroring my Fetch Macbook host
  # pairs with 93_mnemosyne.sh
  cat <<'EOF'

      _______________________________
     (   WELCOME MY SON              )
     (   WELCOME TO THE MACHINE      )
     (_______________________________)
                   \
                    \
              ______________
             |  __________  |
             | |          | |
             | |  > _     | |
             | |          | |
             | |__________| |
             |______________|
                 |______|
             ___/________\___
            |  ::::::::::::  |
            |________________|
              (o)        (o)
             <___>      <___>
--------------------------------------------

EOF

  # exports
  export HOME=/Users/c.tweney
  export PATH=$PATH:/opt/aws-cli/bin:/Users/c.tweney/.local/bin:/Users/c.tweney/dev/my_claude/container
  export GH_TOKEN="$GITHUB_PERSONAL_ACCESS_TOKEN"   # set in host's ~/.claude/settings.json

  source $HOME/dev/my_claude/container/slow_prompt.sh
  [[ $- == *i* ]] && [[ -t 1 ]] && slow_prompt -d 0.045 -h  $'Greetings, Professor Tweney.\n\nWould you like to play a game? [Y/n] ' ans && [[ ${ans:-Y} =~ ^[Yy]$ ]] && run-claude

fi
