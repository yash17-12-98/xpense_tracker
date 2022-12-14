import 'package:get/get.dart';
import 'package:xpense_tracker/bindings/login_binding.dart';
import 'package:xpense_tracker/bindings/signup_binding.dart';
import 'package:xpense_tracker/bindings/wizard_binding.dart';
import 'package:xpense_tracker/controllers/controller.dart';
import 'package:xpense_tracker/screens/auth/login_screen.dart';
import 'package:xpense_tracker/screens/auth/signup_screen.dart';
import 'package:xpense_tracker/screens/auth/wizard_screen.dart';
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
    name: Routes.home,
    page: () => const HomeScreen(),
    binding: HomeBinding(),
  ),
  GetPage(
    name: Routes.login,
    page: () => const LoginScreen(),
    binding: LoginBinding(),
  ),
  GetPage(
    name: Routes.signup,
    page: () => const SignupScreen(),
    binding: SignUpBinding(),
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
  GetPage(
    name: Routes.transactionDetail,
    page: () => const TransacationDetail(),
    binding: TransactionDetailBinding(),
  ),
];
