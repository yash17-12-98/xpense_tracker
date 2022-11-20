import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../controllers/controller.dart';
import '../routes/route.dart';
import '../widgets/widget.dart';

class ExpenseScreen extends GetView<ExpenseController> {
  const ExpenseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text('Expense'),
      ),
        backgroundColor: AppColors.redColor,
        body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
          const SizedBox(height: 60,),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text("How much?",style: TextStyle(color: AppColors.lightWhite,fontSize: 18,fontWeight: FontWeight.w600),),
          ),
          const SizedBox(height: 10,),
          const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text("\$ 0",style: TextStyle(color: AppColors.white,fontSize: 64,fontWeight: FontWeight.w600),),
              ),
          const SizedBox(height: 50,),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(32),topRight: Radius.circular(32)),
                color: AppColors.white
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    DropdownWidget(hint:"Category"),
                    SizedBox(height: 20,),
                    TextFieldWidget(),
                    SizedBox(height: 20,),
                    DropdownWidget(hint:"Transaction"),
                    SizedBox(height: 20,),
                    AttachmentButtonWidget(),
                    SizedBox(height: 20,),
                    ButtonWidget(onTap: (){
                      Get.toNamed(Routes.incomeDetail);
                    },),
                  ],
                ),
              ),
            ),
          )


        ]),
      ),
    );
  }
}
