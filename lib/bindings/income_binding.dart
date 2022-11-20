import 'package:get/get.dart';
import 'package:xpense_tracker/controllers/controller.dart';

class IncomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IncomeController>(() => (IncomeController()));
  }
}