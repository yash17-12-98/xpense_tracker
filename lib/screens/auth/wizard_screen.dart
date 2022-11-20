import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/constant.dart';
import '../../controllers/controller.dart';
import '../../routes/route.dart';
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
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: controller.pageController,
                onPageChanged: (number) {
                  controller.tempIndex.value = number;
                  controller.update();
                },
                children: List.generate(
                    3,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 25.0, horizontal: 15.0),
                          child: Column(
                            children: [
                              Image.asset(
                                controller.wizardList[index].image!,
                                scale: 1.5,
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Text(
                                controller.wizardList[index].title ?? '',
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
                                controller.wizardList[index].subTitle ?? '',
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 17,
                                    color: AppColors.textHintColor,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        )),
              ),
            ),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    3,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: controller.tempIndex.value == index
                              ? Image.asset(ImagesPath.enableIndicator,
                                  scale: 25)
                              : Image.asset(
                                  ImagesPath.disableIndicator,
                                  scale: 30,
                                ),
                        )),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: CommonMaterialButton(
                color: AppColors.primaryColor,
                text: 'Sign Up',
                textColor: AppColors.lightGreyButtonColor,
                minWidth: Get.width,
                onPressed: () => Get.toNamed(Routes.signup),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: CommonMaterialButton(
                color: AppColors.lightGreyButtonColor,
                text: 'Login',
                textColor: AppColors.primaryColor,
                minWidth: Get.width,
                onPressed: () {
                  Get.toNamed(Routes.login);
                },
              ),
            ),
            const SizedBox(
              height: 20.0,
            )
          ],
        ),
      ),
    );
  }
}
