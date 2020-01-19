[![Build Status](https://github.com/dlh/youtube-dl-parallel/workflows/tests/badge.svg)](https://github.com/dlh/youtube-dl-parallel/actions)

# youtube-dl-parallel

Concurrent downloads with youtube-dl.

## Requirements

* [GNU Parallel](https://www.gnu.org/software/parallel/)
* [youtube-dl](https://rg3.github.io/youtube-dl/)
* [Bash](https://www.gnu.org/software/bash/)

## Documentation

    Usage: youtube-dl-parallel [-hj] <url> [<url> ...] [-- <youtube-dl options>]
        -h       : Shows this help message.
        -j <jobs>: The number of jobs to run in parallel. The default is 3.

    If “-” is provided as an argument, then urls will additionally be read from stdin.

## Caveats

To download a YouTube playlist or channel using `youtube-dl-parallel` you'll
need to first find all the videos in that collection.

    youtube-dl --get-id <playlist or channel> | youtube-dl-parallel -

## License

Copyright (c) 2013 DLH. See LICENSE.txt for the MIT license.
