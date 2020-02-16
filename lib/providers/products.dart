import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../dummy_data.dart';

class Products with ChangeNotifier{
  List<Product> _items = DUMMY_PRODUCT;

  List<Product> get items{
    return [..._items];
  }

  void addProduct(){
    // _items.add(value)
    notifyListeners();
  }
}