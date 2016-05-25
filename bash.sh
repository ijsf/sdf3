#!/bin/sh
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

docker run -it -v "$DIR/share":/root/share sdf3 /bin/bash

