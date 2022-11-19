import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xpense_tracker/screens/dashbord_screen.dart';
import 'bindings/binding.dart';
import 'common/common.dart';
import 'routes/route.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Constant.projectName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        splashColor: Colors.blue.withOpacity(0.3),
        highlightColor: Colors.blue.withOpacity(0.3),
      ),
      defaultTransition: Transition.rightToLeft,
      initialRoute: Routes.dashbord,
      initialBinding: DashbordBinding(),
      getPages: pages,
      home: const DashbordScreen(),
    );
  }
}
