import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_realtime_test/service/social_agent.dart';
import 'package:firebase_realtime_test/vo/notification_vo.dart';
import 'package:firebase_realtime_test/vo/order_vo.dart';

const orderPath = "order";
const notiPath = "notification";
const vendorPath = "vendor";

class RealTimeDataBaseImpl extends SocialAgent {
  static final RealTimeDataBaseImpl _singleton =
      RealTimeDataBaseImpl._internal();
  factory RealTimeDataBaseImpl() {
    return _singleton;
  }
  RealTimeDataBaseImpl._internal();

  var databaseRef = FirebaseDatabase.instance.ref();

  @override
  Stream<List<RealTimeOrder>> getOrder() {
    return databaseRef.child(orderPath).onValue.map((event) {
      return (event.snapshot.value as Map<dynamic, dynamic>)
          .values
          .map<RealTimeOrder>((element) {
        return RealTimeOrder.fromJson(Map<String, dynamic>.from(element));
      }).toList();
    });
  }

  @override
  DatabaseReference getNoti() {
    var reference = databaseRef.child(notiPath).child(vendorPath);
    return reference;
  }

  // @override
  // Stream<List<Noti>?> getNoti() {
  //   Noti? noti;
  //   databaseRef.child(notiPath).child(vendorPath).onChildAdded.listen((data) {
  //     RealNotification realNotification =
  //         RealNotification.fromJson(data.snapshot.value as Map);

  //     noti = Noti(
  //         vendorKey: data.snapshot.key, realNotification: realNotification);
  //   });
  //   return Stream.value(noti);
  // }
}



  // @override
  // Stream<Order> getOrderbyId(int? orderId) {
  //   return databaseRef
  //       .child(orderPath)
  //       .child(orderPath.toString())
  //       .once()
  //       .asStream()
  //       .map((event) {
  //     var e = event.snapshot.value as Map<dynamic, dynamic>;
  //     return Order.fromJson(Map<String, dynamic>.from(e));
  //   });
  // }
  


