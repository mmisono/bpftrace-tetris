#!/bin/bash

vagrant up
vagrant ssh -c "cd /vagrant/ && ./run.sh"
vagrant halt
