#!/bin/bash

mupdf resume.pdf&
while [[ 1 ]]
do
    xelatex resume.tex
    pkill -SIGHUP mupdf
    sleep 1
done
