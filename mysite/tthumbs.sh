#!/bin/bash
for i in img/*.jpg
do
echo "Processing image $i ..."
convert -thumbnail x150 $i thumbs/$(basename $i)
done
