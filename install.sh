folderName="ViperC"

# The name of the base project template
baseTemplate="ViperC"

if [ "$#" -eq 1 ]; then
    folderName="$1"
elif [ "$#" -gt 1 ]; then
    echo -e "This script takes one argument at most.\\ne.g. install.sh \"ViperC\""
    exit 1
fi

# installDirectory=~/Applications/Xcode.app/Contents/Developer/Library/Xcode/Templates/File\ Templates/Source/"${folderName}".xctemplate
installDirectory=~/Library/Developer/Xcode/Templates/File\ Templates/"${folderName}"

echo "Templates will be installed to ${installDirectory}"

if [ -d "${installDirectory}" ]; then
    rm -r "${installDirectory}"
fi

mkdir -p "${installDirectory}"

cp -r *.xctemplate "${installDirectory}"

# Create empty directories in the base template folder for common directory structure
# declare -a emptyDirectories=(
#     "Categories"
#     "Controls"
#     "Data Sources"
#     "Extensions"
#     "Fonts"
#     "Resources"
#     "Scripts"
#     "TrueColors"
#     "Utilities"
#     "Views"
#     "View Controllers"
#     )

# for directory in "${emptyDirectories[@]}"; do
#     mkdir -p "${installDirectory}/${baseTemplate}.xctemplate/${directory}"
# done