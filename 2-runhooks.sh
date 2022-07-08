#!/usr/bin/env bash

#base_dir=$(dirname "$0")
#base_dir=$(dirname $(readlink -f "$0"))

base_dir=$(cd "$(dirname "$0")";pwd)

export PATH="$base_dir/depot_tools:$PATH"

export NO_AUTH_BOTO_CONFIG="$base_dir/.boto"


gclient runhooks --force
