import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'bindings/binding.dart';
import 'constant/constant.dart';
import 'firebase_options.dart';
import 'routes/route.dart';
import 'screens/screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Const.projectName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        splashColor: Colors.purple.withOpacity(0.3),
        highlightColor: Colors.purple.withOpacity(0.3),
      ),
      defaultTransition: Transition.rightToLeft,
      initialRoute: Routes.transactionDetail,
      initialBinding: TransactionDetailBinding(),
      getPages: pages,
      home: const SplashScreen(),
    );
  }
}
