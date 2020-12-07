# !/bin/bash

# Downloads and extracts BISON

PROFILE_PATH="./profile"

ZIPFILE="v${GIT_BRANCH}.zip"

if [ -f $ZIPFILE ]; then
  rm $ZIPFILE
fi

URL="${GITHUB_URL}/archive/$ZIPFILE"

wget -q "${URL}"

echo "Removing contents in $PROFILE_PATH"
rm -rf $PROFILE_PATH/*

unzip $ZIPFILE "${BISON_REPO}-${GIT_BRANCH}/xsd/*" -d $PROFILE_PATH

rm -r $DESTINATION_PATH
mkdir -p $DESTINATION_PATH
cp -r $PROFILE_PATH/${BISON_REPO}-${GIT_BRANCH}/xsd/* $DESTINATION_PATH/.
