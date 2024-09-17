import 'food_item.dart';

class Order {
  final List<FoodItem> items;

  Order(this.items);

  double get total => items.fold(0, (sum, item) => sum + item.price);

  @override
  String toString() {
    return items.isEmpty
        ? 'No items ordered.'
        : items.map((item) => item.name).join(', ') + ' | Total: \$${total.toStringAsFixed(2)}';
  }
}
