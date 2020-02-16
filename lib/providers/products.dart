import 'package:flutter/material.dart';
import './product_model.dart';
import '../dummy_data.dart';

class Products with ChangeNotifier{
  List<Product> _items = DUMMY_PRODUCT;

  List<Product> get items{
    return [..._items];
  }
  Product findById(String id){
    return _items.firstWhere((prod) => prod.id == id);
  }
  void addProduct(){
    // _items.add(value)
    notifyListeners();
  }
}