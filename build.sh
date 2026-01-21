#!/bin/bash
for SUB_DIR in */; do
    NAME=$(basename "$SUB_DIR")
    LOCAL_PATH="$SUB_DIR/local"
    if [ -d "$LOCAL_PATH" ]; then
        tar -czf "${NAME}-local.tar.gz" -C "$SUB_DIR" local/
    fi
done
