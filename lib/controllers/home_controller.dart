import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/screen.dart';
import 'base_controller.dart';

class HomeController extends BaseController {
  List<Widget> items = [
    DashbordScreen(),
    Text(
      'Index 1: Profile',
    ),
    Text(
      'Index 2: Shop',
    ),
    Text(
      'Index 2: Shop',
    ),
  ];
  RxInt tempIndex = 0.obs;
}
