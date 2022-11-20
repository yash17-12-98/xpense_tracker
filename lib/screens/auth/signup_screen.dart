import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/constant.dart';
import '../../controllers/controller.dart';
import '../../routes/route.dart';
import '../../utils/util.dart';
import '../../widgets/widget.dart';

class SignupScreen extends GetView<SignupController> {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            'Sign Up',
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
                      controller: controller.nameController,
                      hintText: "Name",
                      validator: Validator.isNameValid,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
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
                    Row(
                      children: [
                        Obx(
                          () => Checkbox(
                              value: controller.check.value,
                              onChanged: (value) {
                                controller.check.value =
                                    !controller.check.value;
                              }),
                        ),
                        const Expanded(
                          child: Text(
                              'By signing up, you agree to the Terms of Service and Privacy Policy'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    CommonMaterialButton(
                      textColor: Colors.white,
                      text: "Sign in",
                      color: AppColors.primaryColor,
                      minWidth: Get.width,
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Already have an account? ",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal),
                        ),
                        GestureDetector(
                          onTap: Get.previousRoute == Routes.login
                              ? () => Get.back()
                              : () => Get.offNamed(Routes.login),
                          child: const Text(
                            "Login",
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
        ));
  }
}
