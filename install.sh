#!/bin/bash

# take the first command line parameter as a folder name
# sample usage : ./install.sh ViperC
# sample usage : ./install.sh ViperC-Quick
# sample usage : ./install.sh ViperC-XCTest

if [[ "$1" != "ViperC" && "$1" != "ViperC-Quick" && "$1" != "ViperC-XCTest" ]]; then
    echo "Invalid argument!"
    echo "Available arguments: ViperC, ViperC-Quick, ViperC-XCTest"
    exit 1
fi

if [ "$#" -eq 1 ]; then
    folderName="$1"
elif [ "$#" -gt 1 ]; then
    echo -e "This script takes one argument at most."
    echo "\\ne.g. ./install.sh ViperC"
    echo "\\ne.g. ./install.sh ViperC-Quick"
    echo "\\ne.g. ./install.sh ViperC-XCTest"
    exit 1
fi

installDirectory=~/Library/Developer/Xcode/Templates/File\ Templates/"${folderName}"

echo "$folderName will be installed to ${installDirectory}"

if [ -d "${installDirectory}" ]; then
    rm -r "${installDirectory}"
fi

mkdir -p "${installDirectory}"

cp -r $folderName.xctemplate "${installDirectory}"

echo "$folderName successfully installed! 🎉"
