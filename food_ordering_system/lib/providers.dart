import 'package:riverpod/riverpod.dart';
import 'services/menu_services.dart';
import 'services/order_service.dart';

final menuProvider = Provider((ref) => MenuService());
final orderProvider = Provider((ref) => OrderService());
