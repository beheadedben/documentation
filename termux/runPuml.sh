#!/bin/bash
node encodePuml.js $1 | xargs -I url curl url -o $1 
