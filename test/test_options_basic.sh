#!/bin/bash

. youtube-dl-parallel

parse_options "url1" "url2"
test ${#URLS[@]} -eq 2 || error "number of URLs is incorrect"
test -z "$YOUTUBE_DL_ARGS" || error "YOUTUBE_DL_ARGS should be empty"
