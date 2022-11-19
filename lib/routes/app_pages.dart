import 'package:get/get.dart';
import 'package:xpense_tracker/controllers/controller.dart';
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
];
