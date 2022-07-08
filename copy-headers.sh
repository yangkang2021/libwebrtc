mkdir webrtc_include
cd src
find api audio call common_audio common_video logging media modules p2p pc rtc_base rtc_tools sdk system_wrappers third_party/abseil-cpp third_party/libyuv video -name '*.h' -exec cp {} --parents ../webrtc_include/ \;