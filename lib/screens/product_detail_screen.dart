import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/products_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;
  // final double price;
  // final String imageUrl;
  //
  // ProductDetailScreen(this.title,this.imageUrl,this.price);
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct = Provider.of<Products>(context, listen: false).findById(
        productId); //listen: false, this will make not to rebuilt the widget again and again but only builds first time and shows to the user
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                loadedProduct.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '\$${loadedProduct.price}',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal:10 ),
              width: double.infinity,

                child: Text(
              loadedProduct.description,
              textAlign: TextAlign.center,
              softWrap: true,
            ))
          ],
        ),
      ),
    );
  }
}
