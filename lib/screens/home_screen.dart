import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xpense_tracker/screens/screen.dart';

import '../constant/constant.dart';
import '../controllers/controller.dart';
import '../routes/route.dart';
import '../widgets/widget.dart';

class HomeScreen extends GetView<HomeController> {
  
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
body: Obx(() =>  Center(child: controller.items.elementAt(controller.tempIndex.value),)),
      bottomNavigationBar: FABBottomAppBar(
        centerItemText: '',
        color: Colors.grey,
        selectedColor: AppColors.primaryColor,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: (val) {
          controller.tempIndex.value = val;
          
        },
        items: [
          FABBottomAppBarItem(iconData: ImagesPath.homeImage, text: 'Home'),
          FABBottomAppBarItem(
              iconData: ImagesPath.transactionImage, text: 'Transaction'),
          FABBottomAppBarItem(iconData: ImagesPath.pieImage, text: 'Budget'),
          FABBottomAppBarItem(iconData: ImagesPath.useerImage, text: 'Profile'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _buildFab(context),
    );
  }

  Widget _buildFab(BuildContext context) {
    final icons = [ImagesPath.incomeImage, ImagesPath.expenseImage];
    return AnchoredOverlay(
      showOverlay: true,
      overlayBuilder: (context, offset) {
        return CenterAbout(
          position: Offset(offset.dx, offset.dy - icons.length * 35.0),
          child: FabWithIcons(
            icons: icons,
            onIconTapped: (val) {},
          ),
        );
      },
      child: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
        elevation: 2.0,
        foregroundColor: AppColors.primaryColor,
      ),
    );
  }
}
