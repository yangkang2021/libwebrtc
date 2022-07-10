#!/usr/bin/env bash
#send libwebrtc.a  to nvidia device

sudo sshpass -p eswin scp -o "StrictHostKeyChecking no" \
output/out_linux_arm64_release/obj/libwebrtc.a  \
eswin@192.168.0.8:/home/eswin/Desktop/sms_client_qt/sms_client_sdk/deps/libwebrtc/lib-linux-aarch64

