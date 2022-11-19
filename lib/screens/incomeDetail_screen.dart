import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../common/common.dart';
import '../controllers/controller.dart';
import '../widgets/widget.dart';

class IncomeDetails extends GetView<IncomeController> {
  const IncomeDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                  alignment: Alignment.center,
                  children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 3,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(32),
                            bottomLeft: Radius.circular(32)),
                        color: AppColors.greenColor),
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
                                child: SvgPicture.asset(ImagesPath.deleteIcon),
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
                          child: Text("\$120",style: TextStyle(color: AppColors.white,fontSize: 64,fontWeight: FontWeight.w600),),
                        ),
                      Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Salary for July",style: TextStyle(color: AppColors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text("Saturday 4 June 2021 16:20",style: TextStyle(color: AppColors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                    ),
                  ],
                ),


                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width/1.2,
                    decoration: BoxDecoration(
                        border: Border.all( color: Colors.grey,),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: AppColors.white),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Type",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: AppColors.textHintColor),),
                              Text("Income",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Category",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: AppColors.textHintColor),),
                              Text("Salary",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Wallet",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color: AppColors.textHintColor),),
                              Text("Chase",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ]),
              const SizedBox(height: 20,),
              const DottedLine(
                dashLength: 20,
                dashGapLength: 25,

              ),
              const SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    const Text(
                      "Description",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20,),
                    const Text(
                      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 20,),
                    const Text(
                      "Attachment",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(ImagesPath.tempImg),
                    ),
                    const SizedBox(height: 40,),
                    ButtonWidget(onTap: () {  },)


                  ],
                ),
              ),


            ]),
      ),
    );
  }
}
