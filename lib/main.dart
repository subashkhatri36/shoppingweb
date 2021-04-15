import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:shoppingwebadmin/app/core/theme/app_theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Shopping Mart",
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
