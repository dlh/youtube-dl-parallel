#!/bin/bash

. youtube-dl-parallel

parse_options "-" <<EOF
url1
url2
url3
EOF
test ${#URLS[@]} -eq 3 || error "number of URLs is incorrect"
test -z "$YOUTUBE_DL_ARGS" || error "YOUTUBE_DL_ARGS should be empty"
