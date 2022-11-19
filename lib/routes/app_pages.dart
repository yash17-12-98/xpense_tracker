import 'package:get/get.dart';
import '../bindings/binding.dart';
import '../screens/screen.dart';
import 'page_routes.dart';

List<GetPage> pages = [
  GetPage(
    name: Routes.splash,
    page: () => const SplashScreen(),
    binding: SplashBinding(),
  ),

];
