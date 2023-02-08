import 'package:firebase_realtime_test/model/order_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Real Time Data"),
      ),
      body: Column(
        children: [
          Consumer<OrderModel>(
            builder: ((context, model, child) {
              return Container(
                height: 200,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Text(model.orders?[index].customerName ?? ""),
                        title: Text(model.orders?[index].statusByText ?? ""),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 20,
                      );
                    },
                    itemCount: model.orders?.length ?? 1),
              );
            }),
          ),
        ],
      ),
    );
  }
}
