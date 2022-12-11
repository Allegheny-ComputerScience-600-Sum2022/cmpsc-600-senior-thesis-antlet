#! /bin/bash

for file in $(ls -d *[a-z].md); do
    sed "s/’/'/g; s/“/\"/g" $file > fix.md && mv fix.md $file
done
