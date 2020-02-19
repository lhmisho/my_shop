import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import '../providers/orders.dart' as ord;

class OrderItem extends StatelessWidget {
  final ord.OrderItem order;

  OrderItem(this.order);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            ListTile(
              title: Text('\$${order.total}'),
              subtitle: Text(DateFormat('dd MM yyy').format(order.dateTime)),
              trailing: IconButton(
                icon: Icon(Icons.expand_more),
                onPressed: () {},
              ),
            ),
          ],
        ));
  }
}
