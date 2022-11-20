import 'package:get/get.dart';
import 'package:xpense_tracker/controllers/controller.dart';

class ExpenseDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExpenseDetailsController>(() => (ExpenseDetailsController()));
  }
}