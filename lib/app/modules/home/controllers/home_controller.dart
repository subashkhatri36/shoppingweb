import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:shoppingwebadmin/app/data/model/menu_model.dart';
import 'package:shoppingwebadmin/app/data/repositories/menu_repositories.dart';

class HomeController extends GetxController {
  MenuRepo menuItems = new MenuRepository();
  RxList<MenuModel> menumodelList;
  RxBool ismenuloaded = false.obs;
  RxInt currentpage = 0.obs;

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    loadMenu();
  }

  loadMenu() async {
    ismenuloaded.toggle();
    List<MenuModel> menu = [];
    Either<String, List<MenuModel>> menuload = await menuItems.loadMenu();
    menuload.fold((l) => print(l), (r) {
      menu = r.toList();
      menumodelList = menu.obs;
    });
    ismenuloaded.toggle();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
