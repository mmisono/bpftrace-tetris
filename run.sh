#!/bin/sh

stty -echo
sudo BPFTRACE_STRLEN=10 ${BPFTRACE_PATH}bpftrace tetris.bt
stty echo
