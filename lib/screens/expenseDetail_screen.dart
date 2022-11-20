import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../controllers/controller.dart';
import '../widgets/widget.dart';

class ExpenseDetails extends GetView<IncomeController> {
  const ExpenseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(alignment: Alignment.center, children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(32),
                            bottomLeft: Radius.circular(32)),
                        color: AppColors.redColor),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.keyboard_arrow_left,
                                  size: 25,
                                ),
                                color: Colors.white,
                              ),
                              Text(
                                "Detail Transaction",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: GestureDetector(
                                    onTap:(){   showModalBottomSheet(
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.vertical(
                                              top: Radius.circular(100.0))),
                                      backgroundColor: Colors.green,
                                      context: context,
                                      builder: (BuildContext btmMobel) {
                                        return Container(
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(100.0)),
                                            color: Colors.red,
                                          ),
                                          height: 250.0,
                                          child: Container(
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(10.0),
                                                      topRight: Radius.circular(10.0))),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(
                                                    horizontal: 10),
                                                child: Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Text(
                                                      "Remove this transaction?",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.w600),
                                                    ),
                                                    SizedBox(
                                                      height: 20,
                                                    ),
                                                    Text(
                                                      "Are you sure do you wanna remove this transaction?",
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight: FontWeight.w600,
                                                          color: AppColors.textHintColor),
                                                    ),
                                                    SizedBox(
                                                      height: 50,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Expanded(
                                                          child: Padding(
                                                            padding: const EdgeInsets.symmetric(horizontal: 10),
                                                            child: CommonMaterialButton(
                                                              text: "No",
                                                              minWidth: Get.width,
                                                              color: AppColors.buttonBackgroundLight,
                                                              textColor: AppColors.textHintColor,
                                                              onPressed: (){Navigator.of(btmMobel).pop();},
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Padding(
                                                            padding: const EdgeInsets.symmetric(horizontal: 10),
                                                            child: CommonMaterialButton(
                                                              text: "Yes",
                                                              minWidth: Get.width,
                                                              color: AppColors.buttonBackground,
                                                              textColor: AppColors.white,
                                                              onPressed: (){
                                                                Navigator.of(btmMobel).pop();
                                                                showDialog(
                                                                  context: context,
                                                                  builder: (ctx) => AlertDialog(
                                                                    shape: RoundedRectangleBorder(
                                                                        borderRadius: BorderRadius.all(Radius.circular(20))
                                                                    ),
                                                                    content: Column(
                                                                      mainAxisSize: MainAxisSize.min,
                                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                                      children: [
                                                                        SvgPicture.asset(ImagesPath.successSVG),
                                                                        SizedBox(height: 10,),
                                                                        const Text("Transaction has been successfully removed",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                                                                      ],
                                                                    ),

                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              )),
                                        );
                                      },
                                    );},
                                   child: SvgPicture.asset(ImagesPath.deleteIcon)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "\$120",
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 64,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Salary for July",
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Saturday 4 June 2021 16:20",
                        style: TextStyle(
                            color: AppColors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: AppColors.white),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Type",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: AppColors.textHintColor),
                              ),
                              Text(
                                "Income",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Category",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: AppColors.textHintColor),
                              ),
                              Text(
                                "Salary",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Wallet",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: AppColors.textHintColor),
                              ),
                              Text(
                                "Chase",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ]),
              const SizedBox(
                height: 20,
              ),
              const DottedLine(
                dashLength: 20,
                dashGapLength: 25,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Description",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Attachment",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(ImagesPath.tempImg),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ButtonWidget(
                      onTap: () {

                      },
                    )
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
