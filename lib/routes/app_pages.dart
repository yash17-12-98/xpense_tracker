import 'package:get/get.dart';
import 'package:xpense_tracker/bindings/wizard_binding.dart';
import 'package:xpense_tracker/controllers/controller.dart';
import 'package:xpense_tracker/screens/auth/wizard_screen.dart';
import '../bindings/binding.dart';
import '../screens/screen.dart';
import 'page_routes.dart';

List<GetPage> pages = [
  GetPage(
    name: Routes.splash,
    page: () => const SplashScreen(),
    binding: SplashBinding(),
  ),
  GetPage(
    name: Routes.dashbord,
    page: () => const DashbordScreen(),
    binding: DashbordBinding(),
  ),
  GetPage(
    name: Routes.wizard,
    page: () => const WizardScreen(),
    binding: WizardBinding(),
  ),
];
