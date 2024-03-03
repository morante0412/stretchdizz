import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/shoe.dart';

class Cart extends ChangeNotifier{
  // list
  List<Shoe> shoeShop = [
    Shoe(name: 'Short', price: '08', imagePath: 'lib/images/db7ccad0-9a32-45be-a279-3c51881f3092-1679862786574.png', description: 'EZ Collection'),
    Shoe(name: 'Tall', price: '12', imagePath: 'lib/images/db7ccad0-9a32-45be-a279-3c51881f3092-1679862786574.png', description: 'EZ Collection'),
    Shoe(name: 'Grande', price: '16', imagePath: 'lib/images/db7ccad0-9a32-45be-a279-3c51881f3092-1679862786574.png', description: "EZ Collection"),
    Shoe(name: 'Venti', price: '20', imagePath: 'lib/images/db7ccad0-9a32-45be-a279-3c51881f3092-1679862786574.png', description: 'EZ Collection'),
  ];

  // list of items in cart
  List<Shoe> userCart = [];

  // list of shoes fo sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}