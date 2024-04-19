#!/bin/bash
for i in $(ls img/* | egrep -i 'jpe?g' )
do
echo "Processing image $i ..."
convert -thumbnail x500 $i thumbs/$(basename $i)
done
