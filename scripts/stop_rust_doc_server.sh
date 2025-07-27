#!/bin/bash

PID_FILE="/tmp/rust_doc_server.pid"

if [ -f "$PID_FILE" ]; then
    PID=$(cat "$PID_FILE")
    if ps -p $PID > /dev/null; then
        kill $PID
        echo "Rust doc server (PID $PID) stopped."
    else
        echo "No running server found with PID $PID."
    fi
    rm "$PID_FILE"
else
    echo "No PID file found. Server may not be running."
fi

