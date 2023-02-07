import 'package:firebase_realtime_test/service/social_impl.dart';
import 'package:firebase_realtime_test/vo/order_vo.dart';
import 'package:flutter/foundation.dart';

import 'social_model.dart';

class OrderModel extends ChangeNotifier {
  List<Order>? orderList;
  Order? orders;
  bool isDisposed = false;
  final SocialModel _msocialModel = SocialImpl();

  OrderModel() {
    _msocialModel.getOrder().listen((event) {
      orderList = event;
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
