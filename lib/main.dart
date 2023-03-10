import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:firebase_realtime_test/home_screen.dart';
import 'package:firebase_realtime_test/model/order_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'addnote.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final OrderModel orderModel = OrderModel();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: orderModel),
      ],
      child: MaterialApp(
        title: "todo app",
        theme: ThemeData(
          primaryColor: Colors.greenAccent[700],
        ),
        home: const HomeScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

// class _HomeState extends State<Home> {
//   final fb = FirebaseDatabase.instance;
//   TextEditingController second = TextEditingController();

//   TextEditingController third = TextEditingController();
//   var l;
//   var g;
//   var k;
//   var m;
//   @override
//   Widget build(BuildContext context) {
//     final ref = fb.ref().child('order');

//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.indigo[900],
//         onPressed: () {
//           // Navigator.pushReplacement(
//           //   context,
//           //   MaterialPageRoute(
//           //     builder: (_) => addnote(),
//           //   ),
//           // );
//         },
//         child: Icon(
//           Icons.add,
//         ),
//       ),
//       appBar: AppBar(
//         title: Text(
//           'Todos',
//           style: TextStyle(
//             fontSize: 30,
//           ),
//         ),
//         backgroundColor: Colors.indigo[900],
//       ),
//       body: FirebaseAnimatedList(
//         query: ref,
//         shrinkWrap: true,
//         itemBuilder: (context, snapshot, animation, index) {
//           var v =
//               snapshot.value.toString(); // {subtitle: webfun, title: subscribe}

//           g = v.replaceAll(
//               RegExp("{|}|customer_name: |status: "), ""); // webfun, subscribe
//           g.trim();

//           l = g.split(','); // [webfun,  subscribe}]

//           return GestureDetector(
//             onTap: () {
//               // setState(() {
//               //   k = snapshot.key;
//               // });

//               // showDialog(
//               //   context: context,
//               //   builder: (ctx) => AlertDialog(
//               //     title: Container(
//               //       decoration: BoxDecoration(border: Border.all()),
//               //       child: TextField(
//               //         controller: second,
//               //         textAlign: TextAlign.center,
//               //         decoration: InputDecoration(
//               //           hintText: 'title',
//               //         ),
//               //       ),
//               //     ),
//               //     content: Container(
//               //       decoration: BoxDecoration(border: Border.all()),
//               //       child: TextField(
//               //         controller: third,
//               //         textAlign: TextAlign.center,
//               //         decoration: InputDecoration(
//               //           hintText: 'sub title',
//               //         ),
//               //       ),
//               //     ),
//               //     actions: <Widget>[
//               //       MaterialButton(
//               //         onPressed: () {
//               //           Navigator.of(ctx).pop();
//               //         },
//               //         color: Color.fromARGB(255, 0, 22, 145),
//               //         child: Text(
//               //           "Cancel",
//               //           style: TextStyle(
//               //             color: Colors.white,
//               //           ),
//               //         ),
//               //       ),
//               //       MaterialButton(
//               //         onPressed: () async {
//               //           await upd();
//               //           Navigator.of(ctx).pop();
//               //         },
//               //         color: Color.fromARGB(255, 0, 22, 145),
//               //         child: Text(
//               //           "Update",
//               //           style: TextStyle(
//               //             color: Colors.white,
//               //           ),
//               //         ),
//               //       ),
//               //     ],
//               //   ),
//               // );
//             },
//             child: Container(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ListTile(
//                   shape: RoundedRectangleBorder(
//                     side: BorderSide(
//                       color: Colors.white,
//                     ),
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   tileColor: Colors.blue.shade100,
//                   trailing: IconButton(
//                     icon: Icon(
//                       Icons.delete,
//                       color: Color.fromARGB(255, 255, 0, 0),
//                     ),
//                     onPressed: () {
//                       ref.child(snapshot.key!).remove();
//                     },
//                   ),
//                   title: Text(
//                     l[1],
//                     // 'dd',
//                     style: TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   subtitle: Text(
//                     v.replaceAll('order/$k/status_by_text', 'order/$k/status'),
//                     // 'dd',

//                     style: TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }

//   upd() async {
//     DatabaseReference ref1 = FirebaseDatabase.instance.ref("order/$k");

// // Only update the name, leave the age and address!
//     await ref1.update({
//       "title": second.text,
//       "subtitle": third.text,
//     });
//     second.clear();
//     third.clear();
//   }
// }
