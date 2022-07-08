
#send libsms_client_sdk.so to eswin's nx device

sudo sshpass -p eswin scp -o "StrictHostKeyChecking no" \
output/out_nx_release/obj/libwebrtc.a  \
eswin@192.168.0.8:/home/eswin/Desktop/sms_client_qt/sms_client_sdk/deps/libwebrtc/lib-linux-aarch64

