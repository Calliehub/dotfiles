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

  export HOME=/Users/c.tweney
  export PATH=$PATH:/opt/aws-cli/bin
  alias brocksso="aws sso login --profile bedrock"

  alias startclaude='eval $(ssh-agent -s) && ssh-add && brocksso && claude'
fi
