import 'package:get/get.dart';
import 'package:xpense_tracker/controllers/controller.dart';

class IncomeDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IncomeDetailsController>(() => (IncomeDetailsController()));
  }
}