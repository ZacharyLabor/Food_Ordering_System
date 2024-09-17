import '../models/food_item.dart';

class MenuService {
  final List<FoodItem> _menu = [
    FoodItem(name: 'Burger', price: 5.99),
    FoodItem(name: 'Pizza', price: 8.99),
    FoodItem(name: 'Pasta', price: 7.50),
  ];

  List<FoodItem> get menu => _menu;
}
