import 'package:firebase_realtime_test/service/social_agent.dart';
import 'package:firebase_realtime_test/service/social_impl.dart';
import 'package:firebase_realtime_test/vo/notification_vo.dart';
import 'package:flutter/foundation.dart';

class NotiModel extends ChangeNotifier {
  List<Noti>? realNoti;
  bool isDisposed = false;
  final SocialAgent _msocialModel = SocialImpl();
}
