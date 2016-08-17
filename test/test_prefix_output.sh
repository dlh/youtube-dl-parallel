#!/bin/bash

. youtube-dl-parallel

lines=$(prefix_output 2 "a" <<EOF
1
2
EOF
)

expected_lines=$(cat <<EOF
a : 1
a : 2
EOF
)

test "$lines" = "$expected_lines" || error "output does not match"
