import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/colors.dart';
import '../../controllers/controller.dart';
import '../../routes/route.dart';
import '../../utils/validator.dart';
import '../../widgets/widget.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () => Navigator.pop(context, false),
              ),
              centerTitle: true,
              title: const Text(
                'Login',
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Form(
                  key: controller.formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CommonTextFormField(
                          controller: controller.emailController,
                          hintText: "Email",
                          validator: Validator.isEmailValid,
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        CommonTextFormField(
                          controller: controller.pwdController,
                          hintText: "Password",
                          validator: Validator.isPwdValid,
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        CommonMaterialButton(
                          textColor: Colors.white,
                          text: "Sign in",
                          color: AppColors.primaryColor,
                          minWidth: Get.width,
                          onPressed: () => controller.signIn(context),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Don't have an account?  ",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.normal),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.toNamed(Routes.signup);
                              },
                              child: const Text(
                                "SignUp",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: AppColors.primaryColor,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )),
        Obx(() => CommonLoaderOverlay(
              visible: controller.load.value,
            )),
      ],
    );
  }
}
