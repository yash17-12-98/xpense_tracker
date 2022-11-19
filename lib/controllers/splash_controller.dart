import '../utils/firebase_services.dart';
import 'controller.dart';

import 'dart:async';
import 'package:get/get.dart';
import '../routes/route.dart';
import '../utils/util.dart';


class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(const Duration(seconds: 3), manageAuthState);
    super.onInit();
  }

  manageAuthState() {
    switch (FirebaseServices.instance.isSignedIn) {
      case true:
        return Get.offNamed(Routes.expense);
      case false:
        return Get.offNamed(Routes.login);
    }
  }
}