#!/bin/bash

. youtube-dl-parallel

dir=$(create_title_directory)
trap "rm -r '$dir'" EXIT

echo "a" > "$dir/0"
echo "aaa" > "$dir/1"
echo "aa" > "$dir/2"
find_longest_title "$dir"

test $TITLE_PADDING -eq 3 || error "title padding is incorrect"
test ${#URL_TITLES[@]} -eq 3 || error "length of url titles array is incorrect"
