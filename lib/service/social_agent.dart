import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_realtime_test/vo/notification_vo.dart';
import 'package:firebase_realtime_test/vo/order_vo.dart';

abstract class SocialAgent {
  Stream<List<RealTimeOrder>> getOrder();
  DatabaseReference getNoti();
  // Stream<Order> getOrderById(int? orderId);
}
