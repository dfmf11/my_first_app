import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_app/core/values/color.value.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
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
                    'WELCOME',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    'Daim\'s Kitchen',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              width: Get.width,
              child: Column(children: [
                TextField(
                  style: TextStyle(color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    labelText: 'Password',
                  ),
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(primaryColor),
                    ),
                    onPressed: () {},
                    child: Text('Log in')),
                RichText(
                  text: TextSpan(
                    text: 'Dont have an account? ',
                    style: TextStyle(color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Register.',
                          style: TextStyle(
                              color: primaryColor,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
