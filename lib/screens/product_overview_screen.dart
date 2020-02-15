import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../dummy_data.dart';
import '../widgets/product_item.dart';

class ProductOverview extends StatelessWidget {
  List<Product> products = DUMMY_PRODUCT;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, index) {
          Product product = products[index];
          return ProductItem(product);
        },
      ),
    );
  }
}
