#!/bin/bash
cd $HOME/.faewulf/startup/scripts
set -e
for f in *.sh; do
  echo $f 
  bash "$f"
done

