import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/app/data/models/filterCategory.dart';
import 'package:my_first_app/app/data/models/product_model.dart';
import 'package:my_first_app/core/values/color.value.dart';
import 'package:badges/badges.dart';
import '../../../../data/helper/focus_scope_helper.dart';
import '../../../../data/models/addToCart_model.dart';
import '../../cart/controllers/cart_controller.dart';
import '../../favorite/controllers/favorite_controller.dart';
import '../controllers/menu_controller.dart';

class MenuView extends GetView<MenuController> {
  MenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => focusScopeHelper(context),
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20.0),
            child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      CircleAvatar(backgroundColor: primaryColor, radius: 35),
                      SizedBox(width: 20),
                      Text('Hi,\nMohd Danial',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 15)),
                      Spacer(),
                      Badge(
                        position: BadgePosition.topEnd(top: 5, end: 5),
                        badgeContent: Text(
                          '10',
                          style: TextStyle(fontSize: 7),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.notifications),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text('What\'s for Dinner?',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    height: 45.00,
                    width: Get.width,
                    child: TextField(
                        focusNode: controller.textFieldFocusNode,
                        keyboardType: TextInputType.visiblePassword,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey[400],
                          ),
                          hintText: "Search Food",
                          hintStyle: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400)),
                          contentPadding:
                              EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                          border: InputBorder.none,
                        )),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text('Categories',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 17)),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.white.withOpacity(0.4),
                          height: 1,
                          width: Get.width * 0.6,
                        ),
                      ),
                    ],
                  ),
                  Obx(
                    () => Wrap(runSpacing: 5, spacing: 5, children: [
                      ...controller.filterName.map((e) {
                        return chipCategory(
                            e, controller.filterSelected.contains(e.id));
                      }),
                      //foreach vs map
                      // controller.filterName.forEach((element) {return chipCategory(e)})
                      // for (var element in categoryFood) ...[
                      //   chipCategory(element)
                      // ],
                    ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: Get.width,
                    child: Obx(
                      () => GridView.count(
                          physics: NeverScrollableScrollPhysics(),
                          childAspectRatio: 0.7,
                          crossAxisCount: 2,
                          crossAxisSpacing: 4.0,
                          mainAxisSpacing: 8.0,
                          shrinkWrap: true,
                          children: [
                            // ListView.builder(
                            //   itemCount: controller.productDetail.length,
                            //   itemBuilder: (BuildContext context, int index) {
                            //     return test1(controller.productDetail[index]);
                            //   },
                            // ),
                            ...controller.productDetail.map((e) => test1(
                                e,
                                controller.productDetail
                                    .indexWhere((element) => element == e))),
                          ]),
                    ),
                  )
                ])),
          ),
        ),
      ),
    );
  }

  InkWell chipCategory(FoodCategory category, bool selected) {
    return InkWell(
      onTap: () {
        if (controller.filterSelected.contains(category.id)) {
          controller.filterSelected.remove(category.id);
        } else {
          controller.filterSelected.add(category.id);
        }
        // controller.filterSelected.contains(category.name);
        // print(controller.filterSelected.contains(category.name));
        print(controller.filterSelected);
      },
      child: Chip(
        labelPadding: EdgeInsets.all(2.0),
        avatar: Icon(
          category.icon,
          color: selected ? Colors.red : Colors.grey,
        ),
        label: Text(
          category.name,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.grey.withOpacity(0.7),
        elevation: 6.0,
        shadowColor: Colors.grey[60],
        padding: EdgeInsets.all(8.0),
      ),
    );
  }

  ClipRRect test1(Product product, int index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        width: 170,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              children: [
                Container(
                  width: constraints.maxWidth,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      image: DecorationImage(
                        image: NetworkImage(product.imageUrl),
                        fit: BoxFit.fitWidth,
                      )),
                  child: Stack(
                    fit: StackFit.loose,
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            onPressed: () {
                              var productListController =
                                  controller.productDetail.elementAt(index);
                              productListController.isFav =
                                  !productListController.isFav;

                              Get.find<MenuController>()
                                  .productDetail
                                  .refresh();
                            },
                            color: product.isFav ? Colors.red : Colors.white,
                            icon: Icon(Icons.favorite),
                          )),
                      Align(
                        alignment: Alignment.topRight,
                        child: !!product.showBanner
                            ? Container(
                                decoration: BoxDecoration(
                                  color:
                                      Colors.orange.shade100.withOpacity(0.7),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15.0, vertical: 5),
                                  child: Text("POPULAR",
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              color: primaryColor,
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500))),
                                ))
                            : SizedBox(),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: constraints.maxWidth,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                          ),
                          child: Text(product.name,
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text('RM ${product.price.toString()}',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 6.4),
                            child: SizedBox(
                              width: Get.width,
                              height: 30,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              primaryColor),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      50.0)))),
                                  onPressed: () {
                                    var addCartController =
                                        Get.find<CartController>().addToCart;
                                    print(product.toString());
                                    if (!addCartController
                                        .map((element) => element.name)
                                        .contains(product.name)) {
                                      // print("uniques");
                                      addCartController.add(AddToCart(
                                          name: product.name,
                                          price: product.price,
                                          imageUrl: product.imageUrl,
                                          quantity: 1));
                                    } else {
                                      // print("duplicate");
                                      int index = addCartController.indexWhere(
                                          (element) =>
                                              element.name == product.name);
                                      addCartController[index].quantity++;
                                      addCartController.refresh();
                                    }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(),
                                    child: Text(
                                      'Add to Cart',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 14),
                                    ),
                                  )),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
