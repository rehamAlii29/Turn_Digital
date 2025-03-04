import 'package:flutter/material.dart';
import 'package:flutter_base/src/Core/Styles/Colors/app_colors.dart';

import 'package:flutter_base/src/Features/Base/presentation/manager/base_controller.dart';
import 'package:get/get.dart';

import '../../../Home/presentation/pages/home_page.dart';
import '../widgets/base_bottom_nav_bar.dart';

class BasePage extends StatelessWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      bottomNavigationBar: const BaseBottomNavBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.get.primary,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: GetBuilder<BaseController>(
          init: BaseController(),
          builder: (_) {
            return IndexedStack(
              index: _.tabIndex,
              children: const [
                HomePage(),
                Center(child: Text('2')),
                Center(),
                Center(child: Text('3')),
                Center(child: Text('4')),
              ],
            );
          }),
    );
  }
}
