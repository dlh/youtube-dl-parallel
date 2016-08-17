#!/bin/bash

. youtube-dl-parallel

parse_options ""
test ${#URLS[@]} -eq 0 || error "number of URLs is incorrect"
test -z "$YOUTUBE_DL_ARGS" || error "YOUTUBE_DL_ARGS should be empty"
