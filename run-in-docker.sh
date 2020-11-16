#!/bin/bash

docker run --privileged --rm -v`pwd`:/share --workdir /share -it ubuntu ./run.sh
