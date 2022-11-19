import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/controller.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: Colors.blue,
        ),
        const Text(
          'Xpense',
          style: TextStyle(fontWeight: FontWeight.bold),
        )
        // const CommonAppTitle(
        //   color: Colors.white,
        // ),
      ],
    ));
  }
}
