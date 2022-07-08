#!/usr/bin/env bash

#base_dir=$(dirname "$0")
#base_dir=$(dirname $(readlink -f "$0"))

base_dir=$(cd "$(dirname "$0")";pwd)

export PATH="$base_dir/depot_tools:$PATH"

#cd src

ninja -C output/out_linux_release sms_schedule_server sms_media_server sms_room_server # all

#cd ..
