import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shoppingwebadmin/app/core/utils/menu_map.dart';
import 'package:shoppingwebadmin/app/modules/widgets/app_bar.dart';
import 'package:shoppingwebadmin/app/modules/widgets/menu.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final home = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MenuBar(),
              Obx(() => Expanded(
                    child: ContentArea(
                      homeController: controller,
                      currentpage: home.currentpage.value,
                    ),
                  )),
            ],
          ),
        ));
  }
}

class ContentArea extends StatelessWidget {
  final int currentpage;
  const ContentArea({
    Key key,
    this.homeController,
    this.currentpage,
  }) : super(key: key);
  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    print(currentpage);
    return mappingMenu(homeController.currentpage.value);
  }
}
