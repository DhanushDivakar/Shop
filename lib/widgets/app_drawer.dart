import 'package:flutter/material.dart';
import 'package:shop/helpers/custom_route.dart';
import 'package:shop/screens/orders_screen.dart';
import 'package:shop/screens/user_products_screen.dart';

class AppDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: Text("Heyy"),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Shop'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Orders'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(OrdersScreen.routeName);
            //Navigator.of(context).pushReplacement(CustomRoute(builder: (ctx) => OrdersScreen()),);
            },
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Manaage Products'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(UserProductScreen.routeName);
            },
          )
        ],
      ),
    );
  }
}
