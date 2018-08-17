# !/bin/bash

# Downloads and extracts BISON

PROFILE_PATH="./profile"

BRANCH="8.1.0.2"
ZIPFILE="$BRANCH.zip"

if [ -f $ZIPFILE ]; then
  rm $ZIPFILE
fi

wget -q "http://github.com/BISONNL/KV4/archive/$ZIPFILE"

echo "Removing contents in $PROFILE_PATH"
rm -rf $PROFILE_PATH/*

unzip $ZIPFILE "KV4-${BRANCH}/xsd/*" -d $PROFILE_PATH

rm -r $DESTINATION_PATH
mkdir -p $DESTINATION_PATH
cp -r $PROFILE_PATH/KV4-${BRANCH}/xsd/* $DESTINATION_PATH/.

rm $ZIPFILE
