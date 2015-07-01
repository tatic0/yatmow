#!/bin/bash

usage () {
echo "Usage: $0 session name"
}

if [ "$1" == "" ]
  then usage
elif [ "$1" == "--help" ]
  then usage
elif [ "$1" == "-h" ]
  then usage
else 
  tmux attach-session -t $1
fi
