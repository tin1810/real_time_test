import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_realtime_test/vo/order_vo.dart';

const orderPath = "order";

class RealTimeDataBaseImpl {
  static final RealTimeDataBaseImpl _singleton =
      RealTimeDataBaseImpl._internal();
  factory RealTimeDataBaseImpl() {
    return _singleton;
  }
  RealTimeDataBaseImpl._internal();

  var databaseRef = FirebaseDatabase.instance.ref();

  @override
  Stream<List<Order>> getOrders() {
    return databaseRef.child(orderPath).onValue.map((event) {
      return (event.snapshot.value as Map<dynamic, dynamic>)
          .values
          .map<Order>((element) {
        return Order.fromJson(Map<String, dynamic>.from(element));
      }).toList();
    });
  }

  @override
  Stream<Order> getOrderbyId(int? orderId) {
    return databaseRef
        .child(orderPath)
        .child(orderPath.toString())
        .once()
        .asStream()
        .map((event) {
      var e = event.snapshot.value as Map<dynamic, dynamic>;
      return Order.fromJson(Map<String, dynamic>.from(e));
    });
  }
}
