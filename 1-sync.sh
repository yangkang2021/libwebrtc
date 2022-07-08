#!/usr/bin/env bash

base_dir=$(cd "$(dirname "$0")";pwd)
export PATH="$base_dir/depot_tools:$PATH"


# --with_branch_heads --with_tags 
gclient sync --no-history -v --nohooks --force --revision src@6584528aeb0f0e2ab4d14114aefeee7e5997ade9
