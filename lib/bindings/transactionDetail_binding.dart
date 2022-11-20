import 'package:get/get.dart';
import 'package:xpense_tracker/controllers/controller.dart';
import '../controllers/splash_controller.dart';

class TransactionDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<TransactionController>(TransactionController(), permanent: false);
  }
}
