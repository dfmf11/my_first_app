import 'package:get/get.dart';

import '../cart/controllers/cart_controller.dart';
import '../controllers/home_controller.dart';
import '../menu/controllers/menu_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );

    Get.lazyPut<MenuController>(
      () => MenuController(),
    );
    Get.lazyPut<CartController>(
      () => CartController(),
    );
    // Get.lazyPut<FavoriteController>(
    //   () => FavoriteController(),
    // );
  }
}
