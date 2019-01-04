#!/bin/bash

cd "$(dirname "$0")"; cd ../../; # Makes sure we're in the right path for referring to docker commands.

docker-compose -f docker-compose.yml build
