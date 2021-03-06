#!/bin/sh

# ===================================================================
# Bootlocal script executed during each vagrant up
# ===================================================================


# -------------------------------------------------------------------
# Parametrization (for all environment)
# -------------------------------------------------------------------
export BOOT2DOCKER_EXTENSION_DIR="/var/lib/boot2docker/extension"
export HOME_DOCKER_USER="/home/docker"


# -------------------------------------------------------------------
# Import custom elements in a dynamic way
#
# NOTE: prefix the files with a number to manage order
# -------------------------------------------------------------------
for bootlocal_file in $BOOT2DOCKER_EXTENSION_DIR/bootlocal.sh.d/* ; do
    if [ -f $bootlocal_file ]; then 
        source $bootlocal_file
    fi
done
