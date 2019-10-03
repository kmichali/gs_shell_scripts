#!/bin/bash


countLines(){
  total=0
  for file in $(find . -name "*.$1"); do
    lines=$(cat $file | grep -v "^$" | wc -l)
    total=$((total + lines))
    echo $lines $file
  done
  echo $total "in total"
}


if [ $# -ne 1  ]
  then
    echo "this script counts non-empty lines in files with a given extension"
    echo "it starts in the current directory and proceeds recursively"
    echo "usage: ./$(basename $0) file_extension"
    exit 1
  fi


echo "$1 files:"
countLines $1



