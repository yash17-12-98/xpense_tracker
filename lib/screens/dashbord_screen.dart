import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:xpense_tracker/common/common.dart';

import '../constant/constant.dart';
import '../controllers/controller.dart';

class DashbordScreen extends GetView<DashbordController> {
  const DashbordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: controller.scaffoldKey,
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              title: Text('Dashbord'),
            ),
            ListTile(
              title: Text('Expenses'),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20.0,
            width: 20.0,
            child: Icon(
              Icons.menu,
              color: AppColors.primaryColor,
            ),
          ),
          const SizedBox(
            height: 60.0,
          ),
          Row(
            children: [
              const SizedBox(
                width: 92.0,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey.withAlpha(50),
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: const EdgeInsets.only(left: 15.0, right: 8.0),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: 0,
                    icon: Image.asset(
                      ImagesPath.downArrow,
                      scale: 50.0,
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: 0,
                        child: Text('Today '),
                      ),
                      DropdownMenuItem(
                        value: 1,
                        child: Text('Week '),
                      ),
                      DropdownMenuItem(
                        value: 2,
                        child: Text('Month '),
                      ),
                    ],
                    onChanged: (val) {},
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          const Text(
            'Account Balance',
            style: TextStyle(
              color: AppColors.textHintColor,
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            '\$ 9400',
            style: TextStyle(
              color: AppColors.textColor,
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 27.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 80.0,
                width: 164.0,
                decoration: BoxDecoration(
                  color: AppColors.incomeContainerColor,
                  borderRadius: BorderRadius.circular(28.0),
                ),
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Image.asset(
                      ImagesPath.incomeImage,
                      height: 48.0,
                      width: 48.0,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Income',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '\$5000',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 80.0,
                width: 164.0,
                decoration: BoxDecoration(
                  color: AppColors.redColor,
                  borderRadius: BorderRadius.circular(28.0),
                ),
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Image.asset(
                      ImagesPath.expenseImage,
                      height: 48.0,
                      width: 48.0,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Expenses',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '\$1200',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 13.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Row(
              children: const [
                Text(
                  'Spend Frequency',
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 140,
            width: MediaQuery.of(context).size.width * 0.95,
            child: Image.asset(
              ImagesPath.dataFlowImage,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: const  EdgeInsets.only(left: 10.0),
            child: Row(
              children: const [
                Text(
                  'Top 5 Transaction',
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left:8.0, right: 8.0, bottom: 8.0),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (builder, index) {
                  return Padding(
                    padding: const EdgeInsets.only( bottom: 8.0),
                    child: Container(
                      height: 89.0,
                      width: MediaQuery.of(context).size.width * 0.90,
                      decoration: BoxDecoration(color: AppColors.textHintColor.withAlpha(20), borderRadius: BorderRadius.circular(19.0),),
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 60.0,width: 60.0,
                            decoration: BoxDecoration(color: Color(0xFFFCEED4), borderRadius: BorderRadius.circular(10.0)),
                            child: Image.asset(ImagesPath.shopingBagImage, scale: 15.0,),
                          ),
                          const SizedBox(width: 10.0,),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Shopping', style: TextStyle(color: AppColors.textColor, fontSize: 16.0, fontWeight: FontWeight.w600,),),
                                Text('Buy some Grocery',style: TextStyle(color: AppColors.textHintColor, fontSize: 16.0, fontWeight: FontWeight.w400,),)
                              ],
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('-\$120',style: TextStyle(color: AppColors.redColor, fontSize: 18.0, fontWeight: FontWeight.w600,),),
                              Text('10:00 AM',style: TextStyle(color: AppColors.textHintColor, fontSize: 16.0, fontWeight: FontWeight.w400,),)
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
