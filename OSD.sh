#!/bin/bash
echo "NEVER OSD (Operating System Detection) (2023)"
case "$OSTYPE" in
    solaris*) echo "Solaris" ;;
    darwin*)  echo "OSX" ;; 
    linux*)   echo "The current OS running is: Linux" ;;
    bsd*)     echo "BSD" ;;
    msys*)    echo "Windows" ;;
    cygwin*)  echo "Windows" ;;
    *)        echo "Unknown operating system: $OSTYPE" ;;
esac
