import 'package:firebase_realtime_test/vo/order_vo.dart';

abstract class SocialModel {
  Stream<List<Order>> getOrder();
  Stream<Order> getOrderById(int? orderId);
}
