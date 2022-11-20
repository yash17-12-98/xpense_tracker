import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../controllers/controller.dart';

class TransacationDetail extends GetView<TransactionController> {
  const TransacationDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: Get.width / 2.5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.textFieldBorder,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(50))
                ),
                child: DropdownButtonFormField<String>(
                  isExpanded: false,
                  iconSize: 0,
                  isDense: true,
                  decoration: const InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),

                    prefixIcon: Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: AppColors.primaryColor,
                    ),
                  ),
                  hint: Text('Select'),
                  items:
                      <String>['May', 'June', 'July', 'Aug'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                  onChanged: (_) {},
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      leading: SvgPicture.asset(
                        ImagesPath.shoppingSVG,
                        fit: BoxFit.scaleDown,
                      ),
                      trailing: const Text(
                        "GFG",
                        style: TextStyle(color: Colors.green, fontSize: 15),
                      ),
                      title: Text("List item $index"));
                }),
          ),
        ],
      ),
    ));
  }
}
