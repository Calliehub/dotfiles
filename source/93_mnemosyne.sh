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

  # For compilers to find zlib you may need to set:
  export LDFLAGS="-L/opt/homebrew/opt/zlib/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/zlib/include"

  # For pkgconf to find zlib you may need to set:
  export PKG_CONFIG_PATH="/opt/homebrew/opt/zlib/lib/pkgconfig"

fi
