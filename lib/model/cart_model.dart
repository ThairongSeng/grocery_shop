import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  //list of items on sale
  final List _shopItems = [
    // [itemName, itemPrice, imagePath, color]
    ["Avocado","4.0","lib/images/avocado.png", Colors.green],
    ["Banana","2.0","lib/images/banana.png", Colors.yellow],
    ["Chicken","12.0","lib/images/chicken.png", Colors.brown],
    ["Water","4.0","lib/images/water.png", Colors.blue],
  ];

  //list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;
  get shopItems => _shopItems;

  //add item to cart
  void addItemToCart(int index){
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  //remove item to cart
  void removeItemFromCart(int index){
    _cartItems.removeAt(index);
    notifyListeners();
  }

  //calculate total price
  String calculateTotal(){
    double totalPrice = 0;
    for(int i=0; i<_cartItems.length; i++){
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }

}