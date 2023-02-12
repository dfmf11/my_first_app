import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/core/values/color.value.dart';
import 'package:badges/badges.dart';
import '../../../../data/helper/focus_scope_helper.dart';
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
                    Wrap()
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
