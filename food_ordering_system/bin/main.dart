import 'dart:io';
import 'package:riverpod/riverpod.dart';
import '../lib/models/food_item.dart';
import '../lib/services/menu_services.dart';
import '../lib/services/order_service.dart';
import '../lib/providers.dart';

void main() {
  final container = ProviderContainer();
  runApp(container);
}

void runApp(ProviderContainer container) {
  final menuService = container.read(menuProvider);
  final orderService = container.read(orderProvider);

  print('Welcome to the Food Ordering System!\n');
  bool running = true;

  while (running) {
    printMenu(menuService.menu);
    stdout.write('Enter a number to order, (v)iew your order, (c)lear order, or (q)uit: ');
    String? input = stdin.readLineSync();

    if (input == 'q') {
      print('Thank you for using the Food Ordering System!');
      running = false;
    } else if (input == 'v') {
      print('\nYour order: ${orderService.currentOrder}\n');
    } else if (input == 'c') {
      orderService.clearOrder();
      print('Order cleared!\n');
    } else {
      int? choice = int.tryParse(input ?? '');
      if (choice != null && choice > 0 && choice <= menuService.menu.length) {
        FoodItem item = menuService.menu[choice - 1];
        orderService.addItem(item);
        print('${item.name} added to your order!\n');
      } else {
        print('Invalid choice, please try again.\n');
      }
    }
  }
}

void printMenu(List<FoodItem> menu) {
  print('Menu:');
  for (int i = 0; i < menu.length; i++) {
    print('${i + 1}. ${menu[i]}');
  }
  print('');
}
