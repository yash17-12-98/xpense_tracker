import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/constant.dart';

import 'controller.dart';

class WizardController extends BaseController {
  RxList<Wizard> wizardList = <Wizard>[].obs;
  RxInt tempIndex = 0.obs;
  PageController pageController = PageController();

  @override
  void onInit() {
    initData();
    super.onInit();
  }

  initData() {
    wizardList.add(Wizard(
        image: ImagesPath.totalControl,
        title: 'Going total control \n of your money',
        subTitle: 'Become your own money manager \nand make every cent count'));
    wizardList.add(Wizard(
        image: ImagesPath.moneyGoes,
        title: 'Know where your \nmoney goes',
        subTitle:
            'Track your transaction easily,\n with categories and financial report'));
    wizardList.add(Wizard(
        image: ImagesPath.planningAhead,
        title: 'Planning ahead',
        subTitle: 'Setup your budget for each category \nso you in control'));
  }
}

class Wizard {
  final String? image;
  final String? title;
  final String? subTitle;

  Wizard({this.image, this.title, this.subTitle});
}
