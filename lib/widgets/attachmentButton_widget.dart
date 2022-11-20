import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Constant/common.dart';
import '../constant/constant.dart';

class AttachmentButtonWidget extends StatelessWidget {
  const AttachmentButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.textFieldBorder,
          ),
          borderRadius: BorderRadius.all(Radius.circular(12))
      ),
      child: Center(child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(ImagesPath.attachmentIcon,color: AppColors.textHintColor,),
          SizedBox(width: 10,),
          const Text("Add attachment",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: AppColors.textHintColor),),
        ],
      )),
    );
  }
}
