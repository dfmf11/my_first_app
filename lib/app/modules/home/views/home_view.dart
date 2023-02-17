import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../cart/controllers/cart_controller.dart';
import '../cart/views/cart_view.dart';
import '../controllers/home_controller.dart';
import '../favorite/views/favorite_view.dart';
import '../menu/views/menu_view.dart';

class HomeView extends GetView<HomeController> {
  HomeController bottomNavigationController = Get.put(HomeController());
  HomeView({Key? key}) : super(key: key);

  final screens = [
    MenuView(),
    CartView(),
    FavoriteView(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Obx(
            () => IndexedStack(
                index: bottomNavigationController.selectedIndex.value,
                children: screens),
          ),
          bottomNavigationBar: Obx(
            () => BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Badge(
                      position: BadgePosition.topEnd(top: 5, end: 5),
                      badgeContent: Text(
                        Get.find<CartController>().addToCart.length.toString(),
                        style: TextStyle(fontSize: 7),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.shopping_cart_rounded),
                        onPressed: () {
                          print('data');
                        },
                      ),
                    ),
                    label: 'Cart'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite), label: 'Favorite')
              ],
              type: BottomNavigationBarType.shifting,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.white38,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: ((index) {
                bottomNavigationController.changeIndex(index);
              }),
              currentIndex: bottomNavigationController.selectedIndex.value,
            ),
          )),
    );
  }
}
