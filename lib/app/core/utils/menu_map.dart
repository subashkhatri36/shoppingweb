import 'package:flutter/cupertino.dart';
import 'package:shoppingwebadmin/app/modules/dashboard/views/dashboard_view.dart';
import 'package:shoppingwebadmin/app/modules/product/views/product_view.dart';

Widget mappingMenu(int listno) {
  switch (listno) {
    case 0:
      return DashboardView();
    case 1:
      return ProductView();
      break;
    default:
      return Container();
      break;
  }
}
