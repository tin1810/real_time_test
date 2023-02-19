import 'package:firebase_realtime_test/model/order_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import 'vo/notification_vo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OrderModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Real Time Data"),
        ),
        body: Column(
          children: [
            Consumer<OrderModel>(
              builder: ((context, model, child) {
                return Expanded(
                  child: Container(
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading:
                                Text("${model.notiList?[index].vendorKey}"),
                            title: CircleAvatar(
                              child: Text(
                                  "${model.notiList?[index].realNotification?.news}"),
                            ),
                            // subtitle: Text(model
                            //         .orders?[index].orderDetail!.statusByText ??
                            //     "fail order"),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            height: 20,
                          );
                        },
                        itemCount: model.notiList?.length ?? 1),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
