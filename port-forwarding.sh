#!/bin/bash

if which socat >/dev/null; then
  pkill socat
  echo "starting port forwarding from localhost:443 to localhost:3000"
  echo "to eliminate this, run: pkill socat"
  socat tcp-listen:443,reuseaddr,fork tcp:localhost:3000 &
else
  echo "socat is not installed. please install it."
  echo "For mac: brew install socat"
  echo "For linux: apt-get install socat"
  exit 1
fi
