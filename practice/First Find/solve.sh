#!/usr/bin/env bash

shopt -s globstar nullglob dotglob

needle=$(find "$1" -type f -name "uber-secret.txt")
cat "$needle"
