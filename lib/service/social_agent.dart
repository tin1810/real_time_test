import 'package:firebase_realtime_test/vo/notification_vo.dart';
import 'package:firebase_realtime_test/vo/order_vo.dart';

abstract class SocialAgent {
  Stream<List<RealTimeOrder>> getOrder();
  Stream<Noti?> getNoti();
  // Stream<Order> getOrderById(int? orderId);
}
