#!/bin/bash

# This takes the files in data and compresses them into a resource pack
# This is so when pushing to git, it's more efficient than having to push an entire new zip file
# It also makes adding new content to the zip file FAR easier than before

original_path=$(pwd)
echo "Running in: $original_path"
echo "Wiping existing temp directories (if existing)"
rm -rf temp/
# We create temporary directories, so if we want to extend this to do other stuff at build time, we can
echo "Creating new temp directories"
mkdir temp/
echo "Copying files"
cp -R data temp 
echo "Creating zip file"
cd temp/
zip -9 -r -q ../../resource.zip .
cd $original_path
cd ..
echo "Finished. Final output is in $(pwd)"
echo "SHA1: $(sha1sum ./resource.zip | awk -F\  '{print $1}')"
cd $original_path