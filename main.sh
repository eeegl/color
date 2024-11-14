#!/bin/bash

#
# This file defines funcitonality for styled printing.
#

if [ -z "${EEEGL_BASH_LIB}" ]; then
    echo "error: env variable '\$EEEGL_BASH_LIB' needs to be set correctly"
fi

EEEGL_COLOR_DIR="${EEEGL_BASH_LIB}/color"

source "${EEEGL_COLOR_DIR}/printing.sh"
