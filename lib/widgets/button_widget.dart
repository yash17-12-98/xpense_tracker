import 'package:flutter/material.dart';

import '../constant/constant.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
          color: AppColors.buttonBackground,
          borderRadius: BorderRadius.all(Radius.circular(12))

      ),
      child: Center(child: Text("Continue",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: AppColors.white),)),
    );
  }
}
