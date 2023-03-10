import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../core/theme/app_style.dart';
import '../../../../../core/utils/size_utils.dart';
import '../../../../../core/values/color.value.dart';
import '../../../../routes/app_pages.dart';
import '../controllers/intro_controller.dart';

class IntroView extends GetView<IntroController> {
  const IntroView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  child: Icon(
                    Icons.fastfood_rounded,
                    size: 40,
                    color: primaryColor,
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Daim\'s',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 35),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Special & Delicious Food',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: Get.width * 0.5,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(primaryColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(50.0)))),
                    onPressed: () => Get.toNamed(Routes.LOGIN),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        'Log in',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 20),
                      ),
                    )),
              ),
              SizedBox(
                width: Get.width * 0.5,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(50.0)))),
                    onPressed: () => Get.toNamed(Routes.REGISTER),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 20),
                      ),
                    )),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                  width: Get.width,
                  height: 170,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/images/group_19.png'),
                          fit: BoxFit.cover)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: getPadding(left: 15, top: 20, bottom: 10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("15%",
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratRomanBold48),
                                  Text("Discount",
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtMontserratRomanBold28),
                                  Padding(
                                      padding: getPadding(top: 6),
                                      child: Text("From Our Store",
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtMontserratRomanRegular16))
                                ])),
                      ]))
            ],
          ),
        ),
      ),
    );
  }
}
