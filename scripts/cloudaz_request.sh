#!/bin/bash
shopt -s nullglob
export CURRENT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
export CURRENT_DIR=$CURRENT_DIR/../classes
export CLASSPATH="$CURRENT_DIR:$CURRENT_DIR/../xlib/nextlabs-openaz-pep.jar:$CURRENT_DIR/../xlib/*:$CURRENT_DIR/../config"

for f in "$CURRENT_DIR/../classes/"*.class
do
  filename=$(basename "$f" | sed 's/\.[^.]*$//')
  echo Executing Java class: $filename
  java $filename $1
done