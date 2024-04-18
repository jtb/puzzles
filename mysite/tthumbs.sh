#!/bin/bash
for i in img/*.jpg
do
echo "Processing image $i ..."
convert -thumbnail x500 $i thumbs/$(basename $i)
done
