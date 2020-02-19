import 'package:flutter/material.dart';
import '../screens/order_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(title: Text('Daily Shop!'),automaticallyImplyLeading: false,),
          Divider(),
          buildListTitle(
            'Products',
            Icons.shop,
            () => Navigator.of(context).pushReplacementNamed('/'),
          ),
          buildListTitle(
            'Orders',
            Icons.payment,
            () => Navigator.of(context).pushReplacementNamed(OrderScreen.routeName),
          ),
        ],
      ),
    );
  }

  Widget buildListTitle(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }
}
