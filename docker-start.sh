#!/bin/sh
exec ./env2js.sh > build/config.js ; npx serve -s ./build