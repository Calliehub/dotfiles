#!/bin/bash
if [ `hostname` == "mnemosyne" ]; then
  # Fetch Rewards Macbook Pro

  # dammit Apple stop ruining Unix
  export BASH_SILENCE_DEPRECATION_WARNING=1

  # history control
  export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
  export HISTSIZE=100000                   # big big history
  export HISTFILESIZE=100000               # big big history
  shopt -s histappend                      # append to history, don't overwrite it

  # Set PATH, MANPATH, etc., for Homebrew.
  eval "$(/opt/homebrew/bin/brew shellenv)"

  export GPG_TTY=$(tty)
  export REQUESTS_CA_BUNDLE=/opt/homebrew/etc/openssl@3/cert.pem
  export SSL_CERT_FILE=$REQUESTS_CA_BUNDLE

fi
