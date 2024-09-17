import '../models/food_item.dart';
import '../models/order.dart';

class OrderService {
  List<FoodItem> _orderItems = [];

  void addItem(FoodItem item) {
    _orderItems.add(item);
  }

  void clearOrder() {
    _orderItems.clear();
  }

  Order get currentOrder => Order(_orderItems);
}
