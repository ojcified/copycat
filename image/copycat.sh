#!/bin/bash
upload="/home/copycat/upload"
download="/home/copycat/download"
if [ "$(ls -A $upload)" ]
then
    echo "files detectet"
    echo "copy"
    cp -r $upload/* $download/
    rm -r $upload/*
else
    echo "nothing to move"
fi
echo "done"
