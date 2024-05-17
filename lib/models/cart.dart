import 'package:flutter/material.dart';
import 'package:sneaker_e_commerce/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Wheels mbaya',
        price: '2500 ksh',
        imagePath: 'lib/images/images (5).jfif',
        description: 'Oh dont go go!'),
    Shoe(
      name: 'Wheels za Dubs',
      price: '3000ksh',
      imagePath: 'lib/images/images (4).jfif',
      description: 'Wheels kama za Dochman',
    ),
    Shoe(
      name: 'The Buffalo',
      price: '2000ksh',
      imagePath: 'lib/images/download (3).jfif',
      description: 'Wheels kama za Odhe',
    ),
    Shoe(
      name: 'Oyuu got wheels!',
      price: '2000ksh',
      imagePath: 'lib/images/images (6).jfif',
      description: 'Wheels kama za Injera',
    ),
  ];
  //list of items in the iser cart

  List<Shoe> userCart = [];

  //get list of shoes

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart

  List<Shoe> getUserCart() {
    return userCart;
  }

  //Add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
