URL=$1
DOMAIN=`echo $URL | sed -e 's/[^/]*\/\/\([^@]*@\)\?\([^:/]*\).*/\2/'`
echo $DOMAIN

wget \
     --recursive \
     --page-requisites \
     --adjust-extension \
     --span-hosts \
     --convert-links \
     --restrict-file-names=windows \
     --domains "$DOMAIN" \
     --no-parent \
         "$URL" # The URL to download This comment is fine
