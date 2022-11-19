import 'package:get/get.dart';
import 'package:xpense_tracker/controllers/controller.dart';

class DashbordBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut<DashbordController>(() => (DashbordController()));
  }
} 