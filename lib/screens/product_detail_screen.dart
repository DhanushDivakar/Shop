import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;
  // final String imageUrl;
  //
  // ProductDetailScreen(this.title,this.imageUrl,this.price);
  static const routeName = '/product-detail';
  @override
  Widget build(BuildContext context) {
    ModalRoute.of(context).settings.arguments as String;
    // ... 
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
    );
  }
}
