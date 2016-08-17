#!/bin/bash

. youtube-dl-parallel

parse_options "-j 42"
test $JOBS -eq 42 || error "number of jobs is incorrect"
