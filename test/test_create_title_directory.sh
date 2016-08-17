#!/bin/bash

. youtube-dl-parallel

dir=$(create_title_directory)
trap "rm -r '$dir'" EXIT

test -n $(echo -n "$dir" | egrep "^${TMPDIR}youtube-dl-parallel\.(XXX\.)?.*$") || error "directory name does not match"
