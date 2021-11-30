#!/usr/bin/env bash
NAME=main
ENGINE=$1
if [ $# -eq 0 ]
  then
    ENGINE="xelatex"
fi
$ENGINE -shell-escape -synctex=1 -interaction=nonstopmode main.tex
biber main
$ENGINE -shell-escape -synctex=1 -interaction=nonstopmode main.tex
$ENGINE -shell-escape -synctex=1 -interaction=nonstopmode main.tex
# zathura $INPUT.pdf
