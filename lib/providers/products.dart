import 'package:flutter/material.dart';
import './product_model.dart';
import '../dummy_data.dart';

class Products with ChangeNotifier{
  List<Product> _items = DUMMY_PRODUCT;

  // bool _isFavorite = false;

  List<Product> get items{
    // if(_isFavorite){
    //   return _items.where((item) => item.isFavorite == _isFavorite).toList();
    // }
    return [..._items];
  }
  List<Product> get favoriteItems{
    return _items.where((item) => item.isFavorite).toList();
  }

  Product findById(String id){
    return _items.firstWhere((prod) => prod.id == id);
  }

  // void showFavorite(){
  //   _isFavorite = true;
  //   notifyListeners();
  // }
  // void showAll(){
  //   _isFavorite = false;
  //   notifyListeners();
  // }
  void addProduct(){
    // _items.add(value)
    notifyListeners();
  }
}