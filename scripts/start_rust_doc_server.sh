#!/bin/bash

DOC_PATH="$HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/share/doc/rust"
PORT=7755

cd "$DOC_PATH" || { echo "rust doc not found at $DOC_PATH"; exit 1; }

python3 -m http.server "$PORT" > /dev/null 2>&1 &

SERVER_PID=$!
echo $SERVER_PID > /tmp/rust_doc_server.pid

xdg-open "http://localhost:$PORT" > /dev/null 2>&1 &
