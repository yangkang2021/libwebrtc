webrtc各个版本在不同平台的库和demo，供上层用户使用。


## 关于头文件和源码
- 头文件应该直接指向google的webrtc仓库：上层用户在使用的时候，需要webrtc的头文件，甚至源文件。
- 这里采用子模块的方式，理论上我不应该有任何代码修改。

## 编译好的库
### M99

#### windows
- [libwebrtc_windows_x86.lib]
- [libwebrtc_windows_x64.lib]
- [libmediasoupclient.lib]
- [peerconnection_clinet.exe]
- [peerconnection_server.exe]
- [stunserver.exe]
- [turnserver.exe]
- [mediasoup-broadcaster.exe]


#### linux
- [libwebrtc_linux_x64.a]
- [peerconnection_clinet]
- [peerconnection_server]
- [stunserver]
- [turnserver]
- [libmediasoupclient]
- [mediasoup-broadcaster]

#### linux-arm64
- [libwebrtc_linux_arm64.a]
- [peerconnection_clinet]
- [peerconnection_server]
- [stunserver]
- [turnserver]
- [libmediasoupclient]
- [mediasoup-broadcaster]

#### mac
- [libwebrtc_mac_x64.a]
- [peerconnection_clinet]
- [peerconnection_server]
- [stunserver]
- [turnserver]
- [libmediasoupclient-mac.a]
- [mediasoup-broadcaster]
 
#### ios
- [libwebrtc.a]
- [WebRTC.framework]
- [AppRTCMobile.ipa]
- [objcnativeapi.ipa]
- [libmediasoupclient-ios.framework]

#### android
- [libwebrtc.a]
- [google-webrtc.aar]
- [AppRTC.apk]
- [androidnativeapi.apk]
- [libmediasoupclient-android.aar]

#### web
- [webrtc-adpter.js]
- [webrtc-web-examplses]

### M94

### M84


[WebRTC的版本发布记录](doc/webrtc_version.md)
