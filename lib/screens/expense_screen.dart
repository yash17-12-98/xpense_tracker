import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:xpense_tracker/common/common.dart';
import '../controllers/controller.dart';
import '../widgets/widget.dart';

class ExpenseScreen extends GetView<ExpenseController> {
  const ExpenseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.redColor,
        body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Row(
            children: [
              IconButton(onPressed: (){}, icon:Icon( Icons.keyboard_arrow_left),color: Colors.white,),
              Expanded(child: Center(child: Text("Expense",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w800),),))
            ],
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text("How much?",style: TextStyle(color: AppColors.lightWhite,fontSize: 18,fontWeight: FontWeight.w600),),
          ),
          SizedBox(height: 20,),
          Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text("\$ 0",style: TextStyle(color: AppColors.white,fontSize: 64,fontWeight: FontWeight.w600),),
              ),
          SizedBox(height: 20,),
          Expanded(
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(32),topRight: Radius.circular(32)),
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
                    ButtonWidget(),


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