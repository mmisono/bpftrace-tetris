#!/bin/bash

set -x

sudo apt-get update && apt-get install -y unzip

wget https://github.com/dalehamel/bpftrace/suites/395704994/artifacts/1069051 -O bpftrace.zip
unzip bpftrace.zip

sudo mv bpftrace*/bpftrace /usr/bin/bpftrace
sudo chmod +x /usr/bin/bpftrace
sudo chmod +s /usr/bin/bpftrace
