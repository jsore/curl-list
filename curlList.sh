#!/usr/bin/env bash

# recursive curl on list of http:// links
date
cat urls.txt | while read output
do
  echo "HTTP response for: $output"
  # curl -o /dev/null -s -w "%{http_code}\n" "$output"
  curl -o /dev/null --silent --head --write-out "%{http_code} $output\n" "$output"
  # if [ $? -eq 0 ]; then
  #   echo " host reached"
  # else
  #   echo " host down"
  # fi
done
#done < responses.txt
  # if [ $? -eq 0 ]; then
  #   echo
