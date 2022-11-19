import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:xpense_tracker/common/common.dart';
import '../controllers/controller.dart';

class ExpenseScreen extends GetView<ExpenseController> {
  const ExpenseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.redColor,
        body: Column(children: [
          Row(
            children: [
              
              Text("Expense",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w800),)
            ],
          )
        ]),
      ),
    );
  }
}
