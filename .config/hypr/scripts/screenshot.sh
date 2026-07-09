#!/bin/bash

# Create screenshot directory
mkdir -p ~/Pictures/Screenshots

# Capture screenshot
FILE=~/Pictures/Screenshots/screenshot-$(date +%F_%H-%M-%S).png

grimblast --notify copysave area $FILE
