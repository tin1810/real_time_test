import 'package:firebase_realtime_test/service/social_agent.dart';
import 'package:firebase_realtime_test/service/real_time_database.dart';
import 'package:firebase_realtime_test/vo/notification_vo.dart';
import 'package:firebase_realtime_test/vo/order_vo.dart';

class SocialImpl extends SocialAgent {
  static final SocialImpl _singleton = SocialImpl._internal();
  factory SocialImpl() {
    return _singleton;
  }
  SocialImpl._internal();
  SocialAgent mDataAgent = RealTimeDataBaseImpl() as SocialAgent;
  @override
  Stream<List<RealTimeOrder>> getOrder() {
    return mDataAgent.getOrder();
  }

  @override
  Stream<Noti?> getNoti() {
    return mDataAgent.getNoti();
  }
}
