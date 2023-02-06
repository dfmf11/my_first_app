import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../core/values/color.value.dart';
import '../controllers/intro_controller.dart';

class IntroView extends GetView<IntroController> {
  const IntroView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 50,
              child: Icon(
                Icons.fastfood_rounded,
                size: 40,
                color: primaryColor,
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    'Daim\'s',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Special & Delicious Food',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(primaryColor),
                ),
                onPressed: () {},
                child: Text('Log in')),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {},
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.black),
                )),
            Container(
              color: Colors.red,
              width: Get.width,
              height: 150,
            )
          ],
        ),
      ),
    );
  }
}
