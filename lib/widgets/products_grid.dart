import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './product_item.dart';
import '../providers/products.dart';

class ProductsGrid extends StatelessWidget {
  final bool isFavorite;
  ProductsGrid(this.isFavorite);
  
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);
    final products = isFavorite ? productData.favoriteItems : productData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, index) {
        return ChangeNotifierProvider.value(
            value: products[index],
            child: ProductItem(
              // products[index].id,
              // products[index].title,
              // products[index].imageUrl,
            ));
      },
    );
  }
}
