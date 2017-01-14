#!/bin/bash
case $USER in
rich | barbara)
    echo "Welcome, $USER";;
testing)
    echo "Special testing account";;
navono)
    echo "Yeah! You are in!";;
*)
    echo "Sorry , your are not allowed here";;
esac
