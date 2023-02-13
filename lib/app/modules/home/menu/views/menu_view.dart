import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/core/values/color.value.dart';
import 'package:badges/badges.dart';
import '../../../../data/helper/focus_scope_helper.dart';
import '../../../../routes/app_pages.dart';
import '../controllers/menu_controller.dart';

class MenuView extends GetView<MenuController> {
  const MenuView({Key? key}) : super(key: key);

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
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 20)),
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
                          style: TextStyle(color: Colors.black),
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
                            width: Get.width * 0.7,
                          ),
                        ),
                      ],
                    ),
                    Wrap(
                      spacing: 5,
                      runSpacing: 3,
                      direction: Axis.horizontal,
                      // children: filterChipsList(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 10),
                        itemCount: 10,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: SizedBox(
                              width: 170,
                              height: Get.height * 0.3,
                              child: LayoutBuilder(
                                builder: (BuildContext context,
                                    BoxConstraints constraints) {
                                  return Column(
                                    children: [
                                      Container(
                                        width: constraints.maxWidth,
                                        height: constraints.maxHeight * 0.65,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade300,
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/brgr.jpg"),
                                              fit: BoxFit.contain,
                                            )),
                                        child: Stack(
                                          fit: StackFit.loose,
                                          children: [
                                            Align(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors
                                                        .orange.shade100
                                                        .withOpacity(0.7),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 15.0,
                                                            vertical: 5),
                                                    child: Text("POPULAR",
                                                        style: GoogleFonts.poppins(
                                                            textStyle: TextStyle(
                                                                color:
                                                                    primaryColor,
                                                                fontSize: 11,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500))),
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: constraints.maxWidth,
                                        // height: constraints.maxHeight,
                                        color: Colors.white,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 8.0,
                                              ),
                                              child: Text("Hawaian Burger",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: Colors.black)),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8.0),
                                              child: Text("RM 10.00",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black)),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 8.0,
                                                  vertical: 5.2),
                                              child: SizedBox(
                                                width: Get.width,
                                                height: 30,
                                                child: ElevatedButton(
                                                    style: ButtonStyle(
                                                        backgroundColor:
                                                            MaterialStateProperty.all<
                                                                    Color>(
                                                                primaryColor),
                                                        shape: MaterialStateProperty.all<
                                                                RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            50.0)))),
                                                    onPressed: () =>
                                                        Get.toNamed(Routes.HOME),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .symmetric(
                                                          vertical: 5.0),
                                                      child: Text(
                                                        'Add to Cart',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            fontSize: 14),
                                                      ),
                                                    )),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          );
                        })
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

// List<Widget> filterChipsList() {
//     List<Widget> chips = [];
//     for (int i = 0; i < controller.chipsList.length; i++) {
//       Widget item = Padding(
//         padding: const EdgeInsets.only(left: 10, right: 5),
//         child: FilterChip(
//           label: Text(controller.chipsList[i].label),
//           labelStyle: const TextStyle(color: Colors.white,fontSize: 16),
//           backgroundColor: _chipsList[i].color,
//           selected: controller.chipsList[i].isSelected,
//           onSelected: (bool value) {
//             Obx(() {
//               controller.chipsList[i].isSelected = value;
//             });
//           },
//         ),
//       );
//       chips.add(item);
//     }
//     return chips;
//   }

