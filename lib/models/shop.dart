import 'package:flutter/material.dart';
import 'food.dart';

class Shop extends ChangeNotifier {
  final List<Food> _foodMenu = [
    Food(
      name: "Sushi",
      price: "200",
      imagePath: "assets/sushi-roll.png",
      rating: "4.5",
    ),
    Food(
      name: "Solomon",
      price: "25.8",
      imagePath: "assets/sushi.png",
      rating: "8",
    ),
  ];

  List<Food> _cart = [];

  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  void addTocart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  void removeFromCart(Food food) {
    _cart.remove(food);
    notifyListeners();
  }
}
