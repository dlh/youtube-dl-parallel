#!/bin/bash

. youtube-dl-parallel

test 4 -eq $(padding_multibyte 4 "foo") || error "padding is not correct"
test 5 -eq $(padding_multibyte 4 "föo") || error "padding is not correct"
