#!/bin/bash

# ------------------------------------------------------------------
# [Author] Deploy Backend Script
#          This script logs in to Docker Hub and pushes a Docker image.
#
# Version: 0.1.0
# Created: 03/20/2025
# ------------------------------------------------------------------

# --- Global variables ---------------------------------------------
SCRIPT_NAME=$(basename "$0")
VERSION="0.1.0"
USAGE="Usage: $SCRIPT_NAME -t <docker_tag> -v <version>"

# --- Command-line argument parsing --------------------------------
while getopts ":t:v:h" opt; do
    case "$opt" in
        t) TAG=${OPTARG} ;;
        v) VERSION_PARAM=${OPTARG} ;;
        h)
            echo "$USAGE"
            echo "  -t: Docker image tag"
            echo "  -v: Version to push"
            exit 0
            ;;
        :) 
            echo "Error: Option -$OPTARG requires an argument." >&2
            echo "$USAGE"
            exit 1
            ;;
        \?)
            echo "Error: Invalid option -$OPTARG" >&2
            echo "$USAGE"
            exit 1
            ;;
    esac
done

# --- Validation ---------------------------------------------------
if [ -z "$TAG" ] || [ -z "$VERSION_PARAM" ]; then
    echo "Error: Both -t (tag) and -v (version) are required." >&2
    echo "$USAGE"
    exit 1
fi

if [ -z "$DOCKERHUB_USER" ] || [ -z "$DOCKERHUB_PASSWORD" ]; then
    echo "Error: Environment variables DOCKERHUB_USER and DOCKERHUB_PASSWORD are required." >&2
    exit 1
fi

# --- Helper functions ---------------------------------------------
log() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1"
}

check_error() {
    if [ $? -ne 0 ]; then
        log "ERROR: $1"
        exit 1
    fi
}

# --- Main script logic --------------------------------------------
log "Starting execution of $SCRIPT_NAME"

docker login -u "${DOCKERHUB_USER}" -p "${DOCKERHUB_PASSWORD}"
check_error "Docker login failed"

docker push "${TAG}:${VERSION_PARAM}"
check_error "Docker push failed"

log "Successfully pushed ${TAG}:${VERSION_PARAM}"

log "Finished execution of $SCRIPT_NAME"

exit 0
