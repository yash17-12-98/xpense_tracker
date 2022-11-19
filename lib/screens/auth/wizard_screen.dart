import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/constant.dart';
import '../../controllers/controller.dart';
import '../../widgets/widget.dart';

class WizardScreen extends GetView<WizardController> {
  const WizardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemBuilder: (context, index) {
                  var wizard = controller.wizardList[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 15.0),
                    child: Column(
                      children: [
                        Image.asset(
                          wizard.image!,
                          scale: 1.5,
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          wizard.title ?? '',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          wizard.subTitle ?? '',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 17,
                              color: AppColors.textHintColor,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: controller.wizardList.length, // Can be null
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CommonMaterialButton(
                    color: AppColors.primaryColor,
                    text: 'Sign Up',
                    textColor: AppColors.lightGreyButtonColor,
                    minWidth: Get.width,
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CommonMaterialButton(
                    color: AppColors.lightGreyButtonColor,
                    text: 'Login',
                    textColor: AppColors.primaryColor,
                    minWidth: Get.width,
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
