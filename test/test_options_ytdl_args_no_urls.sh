#!/bin/bash

. youtube-dl-parallel

parse_options "--" "--simulate"

test ${#URLS[@]} -eq 0 || error "number of URLs is incorrect"
test "$YOUTUBE_DL_ARGS" = "--simulate" || error "YOUTUBE_DL_ARGS is incorrect"
