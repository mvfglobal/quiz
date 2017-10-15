#!/bin/bash

SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

find "$SCRIPTPATH/../app/" -type f -name '*.php' -exec sed --in-place 's/[[:space:]]\+$//' {} \+
find "$SCRIPTPATH/../tests/" -type f -name '*.php' -exec sed --in-place 's/[[:space:]]\+$//' {} \+
