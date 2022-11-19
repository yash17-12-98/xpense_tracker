import 'package:get/get.dart';
import 'package:xpense_tracker/controllers/controller.dart';

class ExpenseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExpenseController>(() => (ExpenseController()));
  }
}