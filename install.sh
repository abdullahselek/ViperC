folderName="ViperC"

# The name of the base project template
baseTemplate="ViperC"

if [ "$#" -eq 1 ]; then
    folderName="$1"
elif [ "$#" -gt 1 ]; then
    echo -e "This script takes one argument at most.\\ne.g. install.sh \"ViperC\""
    exit 1
fi

installDirectory=~/Library/Developer/Xcode/Templates/File\ Templates/"${folderName}"

echo "Templates will be installed to ${installDirectory}"

if [ -d "${installDirectory}" ]; then
    rm -r "${installDirectory}"
fi

mkdir -p "${installDirectory}"

cp -r *.xctemplate "${installDirectory}"

echo "ViperC successfully installed!"