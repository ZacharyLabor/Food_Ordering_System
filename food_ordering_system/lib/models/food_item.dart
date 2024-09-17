class FoodItem {
  final String name;
  final double price;

  FoodItem({required this.name, required this.price});

  @override
  String toString() {
    return '$name - \$${price.toStringAsFixed(2)}';
  }
}
