import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:xpense_tracker/common/colors.dart';

import '../controllers/controller.dart';

class DashbordScreen extends GetView<DashbordController> {
  const DashbordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 60.0,
          ),
          Row(
            children: [
              Container(
                height: 50.0,
                width: 50.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    shape: BoxShape.circle,
                    border:
                        Border.all(color: AppColors.primaryColor, width: 4.0)),
                child: Container(
                  height: 48.0,
                  width: 48.0,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.whiteColor, width: 3.0),
                  ),
                  alignment: Alignment.center,
                  child: const Icon(
                    Icons.person,
                    color: AppColors.primaryColor,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.withAlpha(50),
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding: const EdgeInsets.only(left:15.0, right:8.0),
                    child: Image.asset("assets/images/down_arrow.png", scale : 20),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
