#!/usr/bin/env bash
set -x

# Available environment variables
#
# DOCKER_REGISTRY
# REPOSITORY
# VERSION

# Set default values

DOCKER_REGISTRY=${DOCKER_REGISTRY:-quay.io}
REPOSITROY=${REPOSITORY:-manager-runner}
VERSION=${VERSION:-latest}

if [[ -n $DOCKER_REGISTRY ]]; then
    REPOSITORY="$DOCKER_REGISTRY/$REPOSITORY"
fi

docker push "$REPOSITORY:$VERSION"
