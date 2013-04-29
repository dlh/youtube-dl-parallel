# youtube-dl-parallel

A small utility program to spawn a number of youtube-dl processes in parallel.

## Requirements

* [GNU Parallel](http://www.gnu.org/software/parallel)
* [youtube-dl](http://rg3.github.io/youtube-dl)

## Documentation

Usage: `youtube-dl-parallel url [url...]`

The JOBS environment variable can be used to control the number of jobs to run
in parallel. The default is 3. See parallel(1) for more documentation.

## License

Copyright (c) 2013 DLH. See LICENSE.txt for the MIT license.
