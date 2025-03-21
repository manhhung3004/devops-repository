#!/bin/bash

# ------------------------------------------------------------------
# [Author] Build Docker Image Script
#          Build Docker Image with custom file and tag
#
# Version: 0.1.2
# Created: 03/21/2025
# ------------------------------------------------------------------

# --- Global variables ---------------------------------------------
SCRIPT_NAME=$(basename "$0")
VERSION="0.1.2"
USAGE="Usage: $SCRIPT_NAME [-h] [-v] [-t <tag>] [-f <Dockerfile>] [-d]"

# --- Command-line argument parsing --------------------------------
while getopts "hvt:f:d" opt; do
    case "$opt" in
        h)  echo "$USAGE"
            echo "  -h: Show help"
            echo "  -v: Show version"
            echo "  -t: Tag for Docker image (e.g., mahhhuhh/backend-fullstack-ecommerce:v1.0)"
            echo "  -f: Dockerfile to use (default: ./Dockerfile)"
            echo "  -d: Enable debug mode"
            exit 0
            ;;
        v)  echo "Version: $VERSION"
            exit 0
            ;;
        t)  TAG="$OPTARG"
            ;;
        f)  FILE="$OPTARG"
            ;;
        d)  DEBUG=true
            ;;
        ?)  echo "Invalid option: -$OPTARG"
            echo "$USAGE"
            exit 1
            ;;
    esac
done

shift $((OPTIND-1))

if [ "$DEBUG" = true ]; then
    set -x
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
log "Starting Docker build process"
log "Working directory: $(pwd)"
log "Files in the current directory:"
ls -al
if [ -z "$FILE" ]; then
    FILE="Dockerfile"
fi

if [ -z "$TAG" ]; then
    log "ERROR: TAG is required (use -t <tag>)"
    exit 1
fi

if [ ! -f "$FILE" ]; then
    log "ERROR: Dockerfile '$FILE' not found!"
    exit 1
fi

log "Dockerfile: $FILE"
log "Docker tag: $TAG"

docker build -t "$TAG" -f "$FILE" . || check_error "Docker build failed"

log "Docker image '$TAG' built successfully"

exit 0
