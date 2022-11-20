import 'package:get/get.dart';
import '../controllers/controller.dart';

class WizardBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<WizardController>(() => (WizardController()));
    Get.put<WizardController>(WizardController(), permanent: false);
  }
}
