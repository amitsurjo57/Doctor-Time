import 'dart:math';

import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_video_conference/zego_uikit_prebuilt_video_conference.dart';
import 'constant.dart';

class VideoConferencePage extends StatelessWidget {
  final String name;

  final userId = Random().nextInt(10000).toString();

  VideoConferencePage({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ZegoUIKitPrebuiltVideoConference(
        appID: AppInfo.appId,
        appSign: AppInfo.appSign,
        userID: userId,
        userName: name,
        conferenceID: 'Doctor',
        config: ZegoUIKitPrebuiltVideoConferenceConfig(),
      ),
    );
  }
}
