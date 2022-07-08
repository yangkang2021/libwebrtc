#!/usr/bin/env bash

#base_dir=$(dirname "$0")
#base_dir=$(dirname $(readlink -f "$0"))

base_dir=$(cd "$(dirname "$0")";pwd)

export PATH="/home/moming/Desktop/webrtc-04-buka/sms/gcc-linaro-7.5.0-2019.12-x86_64_aarch64-linux-gnu/bin:$base_dir/depot_tools:$PATH"

#cd src

ninja -j4 -C output/out_nx_release webrtc #peerconnection_client # sms_client_sdk #sms_room_client_sdk sms_client_sdk #rtc_base api media call sdk video #all

#cd ..
