#!/bin/sh


if [ "$DEBUG_MODE" = "1" ]; then
    echo "DEBUG_MODE is active"
    ./dlv exec /opt/demo/demo-remote-debug-golang --headless --listen=:8888 --accept-multiclient --continue
else
    echo "DEBUG_MODE is inactive"
    ./demo-remote-debug-golang
fi