#! /bin/bash

for file in $(ls -d *[a-z].md); do
    sed -i "s/’/'/g; s/“/\"/g" $file
done
