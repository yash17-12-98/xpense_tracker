import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import '../constant/constant.dart';
import '../utils/storage.dart';
import '../utils/util.dart';
import 'controller.dart';

class SignupController extends BaseController {
  final imageFile = Rxn<File>();
  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();
  final TextEditingController confirmPwdController = TextEditingController();
  RxBool check = false.obs;

  Future<void> updateImage() async {
    imageFile.value = await Common.pickImageFromGallery();
    if (imageFile.value != null) {
      Common.logger.d("ImageFile Path: ${imageFile.toString()}");
      Common.logger
          .d("ImageFile Name: ${imageFile.value!.path.split('/').last}");
    }
  }

  Future<File> getImageFileFromAssets(String path) async {
    final byteData = await rootBundle.load(path);
    final file =
        File('${(await getTemporaryDirectory()).path}/${path.split("/").last}');
    await file.writeAsBytes(byteData.buffer
        .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
    return file;
  }

  Future<bool> uploadFile(imageFile) async {
    if (imageFile != null) {
      await Storage.instance
          .uploadFile(imageFile.path, imageFile.path.split('/').last);
      return true;
    }
    return false;
  }

  Future<String?> getDownloadedFileUrl(isUploaded) async {
    return isUploaded
        ? await Storage.instance
            .getDownloadedUrl(imageFile.value!.path.split('/').last)
        : null;
  }

  Future checkFileImg() async {
    if (imageFile.value != null) {
      return imageFile.value;
    }
    // imageFile.value = await getImageFileFromAssets(ImagePath.userIcon);
    return null;
  }

  Future<void> signup() async {
    Get.focusScope!.unfocus();
      if (formKey.currentState!.validate()) {
        if(check.value == true){
          load.value = true;
          FirebaseServices.instance
              .signUpUserWithEmailAndPassword(
              name: nameController.text,
              email: emailController.text,
              password: pwdController.text)
              .then((value) {
            load.value = false;
            if (value != null) {
              Get.back();
              Common.showSnackBar(
                  title: "SIGNUP",
                  subtitle: "Account created successfully",
                  color: Colors.green);
            }
          });
        }else{
          Common.showSnackBar(
              color: Colors.red,
              title: 'Terms and Condition',
              subtitle: 'Please accept the Terms of service and Privacy policy');
        }
      }
  }
}
