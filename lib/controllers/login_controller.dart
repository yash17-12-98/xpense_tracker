import 'package:flutter/material.dart';
import 'controller.dart';

class LoginController extends BaseController{
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}