#!/bin/bash

export LD_PRELOAD="$(pwd)/socket-kit.so"

curl -f https://huggingface.co && { echo TEST FAIL; exit 1; } || { echo TEST OK; exit 0; }
