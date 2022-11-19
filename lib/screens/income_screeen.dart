import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:xpense_tracker/common/common.dart';
import '../controllers/controller.dart';
import '../routes/page_routes.dart';
import '../widgets/widget.dart';

class IncomeScreen extends GetView<IncomeController> {
  const IncomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.greenColor,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(onPressed: (){}, icon:const Icon( Icons.keyboard_arrow_left,size: 25,),color: Colors.white,),
                  const Expanded(child: Center(child: Text("Income",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w800),),))
                ],
              ),
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
                      children:  [
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
                          Get.toNamed(Routes.expense);
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
