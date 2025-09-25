#!/usr/bin/env bash

fswatch -o ./debugging-production/*.html | while read; do
  osascript -e 'tell application "Safari" to set URL of document 1 to URL of document 1'
done
