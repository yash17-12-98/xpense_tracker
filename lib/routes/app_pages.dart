import 'package:get/get.dart';
import 'package:xpense_tracker/controllers/controller.dart';
import 'package:xpense_tracker/screens/expense_screen.dart';
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
    name: Routes.expense,
    page: () => const ExpenseScreen(),
    binding: ExpenseBinding(),
  ),
  GetPage(
    name: Routes.income,
    page: () => const IncomeScreen(),
    binding: IncomeBinding(),
  ),
  GetPage(
    name: Routes.incomeDetail,
    page: () => const IncomeDetails(),
    binding: IncomeDetailBinding(),
  ),
  GetPage(
    name: Routes.expenseDetail,
    page: () => const ExpenseDetails(),
    binding: ExpenseDetailBinding(),
  ),
];
