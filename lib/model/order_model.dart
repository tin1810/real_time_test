import 'package:firebase_realtime_test/service/social_impl.dart';
import 'package:firebase_realtime_test/vo/notification_vo.dart';
import 'package:firebase_realtime_test/vo/order_vo.dart';
import 'package:flutter/foundation.dart';

import '../service/social_agent.dart';

class OrderModel extends ChangeNotifier {
  List<RealTimeOrder>? orders;
  Noti? realNoti;
  bool isDisposed = false;
  final SocialAgent _msocialModel = SocialImpl();

  OrderModel() {
    _msocialModel.getOrder().listen((orderList) {
      orders = orderList;
      if (!isDisposed) {
        notifyListeners();
      }
    });

    _msocialModel.getNoti().listen((notis) {
      realNoti = notis;
      if (!isDisposed) {
        notifyListeners();
      }
    });
  }
  @override
  void dispose() {
    super.dispose();
    isDisposed = true;
  }
}
