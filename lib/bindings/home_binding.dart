import 'package:get/get.dart';
import 'package:xpense_tracker/controllers/controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<HomeController>(() => (HomeController()));
    Get.put<HomeController>(HomeController(), permanent: false);
  }
}