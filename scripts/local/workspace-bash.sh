#!/bin/bash

cd "$(dirname "$0")"; cd ../../; # Makes sure we're in the right path for referring to docker commands.

# In Docker toolbox, the name is based on the folder name with dashes removed. Whilst in Docker for Windows it retains the dashes.
CONTAINER_NAME=`docker ps --format "{{.Names}}" |grep workspace_workspace`

winpty docker exec -it $CONTAINER_NAME bash
