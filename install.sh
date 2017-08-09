# take the first command line parameter as a folder name
# sample usage : ./install.sh ViperC
# sample usage : ./install.sh ViperC-Quick

folderName="$1"

if [ "$#" -eq 1 ]; then
    folderName="$1"
elif [ "$#" -gt 1 ]; then
    echo -e "This script takes one argument at most.\\ne.g. install.sh \"ViperC\""
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