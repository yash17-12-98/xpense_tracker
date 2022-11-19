import 'package:flutter/material.dart';

import '../constant/constant.dart';



class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.textFieldBorder,
          ),
          borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10 ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Username',
          ),
        ),
      ),
    );
  }
}
