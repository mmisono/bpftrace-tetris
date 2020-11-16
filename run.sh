#!/bin/bash

BPFTRACE_BINARY_URL=https://github.com/iovisor/bpftrace/releases/download/v0.11.4/bpftrace

which bpftrace >/dev/null 2>&1
if [[ $? == 1 ]]; then
  if [[ ! -f bpftrace ]]; then
      which wget >/dev/null 2>&1
      if [[ $? == 1 ]]; then
          # sorry, assuming ubuntu
          apt-get update && apt-get install -y wget
      fi
      wget $BPFTRACE_BINARY_URL
      chmod 755 bpftrace
  fi
  BPFTRACE="./bpftrace"
else
  BPFTRACE="bpftrace"
fi

which sudo >/dev/null 2>&1
if [[ $? == 1 ]]; then
    SUDO=""
else
    SUDO="sudo"
fi

stty -echo
export BPFTRACE_STRLEN=10
$SUDO $BPFTRACE tetris.bt 2>/dev/null
stty echo
