import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_app/core/values/color.value.dart';
import '../../../../../core/theme/app_decoration.dart';
import '../../../../../core/utils/size_utils.dart';
import '../../../../data/helper/focus_scope_helper.dart';
import '../../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => focusScopeHelper(context),
      child: SafeArea(
          top: false,
          bottom: false,
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: AppBar(
              backgroundColor: Colors.black,
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Get.toNamed(Routes.INTRO),
              ),
            ),
            body: Container(
                width: size.width,
                padding: getPadding(left: 32, right: 32, bottom: 9),
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'WELCOME',
                          style: TextStyle(
                              fontWeight: FontWeight.w900, fontSize: 40),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Daim\'s Kitchen',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      Container(
                          width: getHorizontalSize(325.00),
                          margin: getMargin(left: 1, top: 32, bottom: 5),
                          padding: getPadding(
                              left: 19, top: 38, right: 19, bottom: 38),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(left: 1),
                                    child: ListView.separated(
                                        physics: BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                              height: getVerticalSize(21.00));
                                        },
                                        itemCount: 2,
                                        itemBuilder: (context, index) {
                                          return PasswordItemWidget(
                                            index: index,
                                          );
                                        })),
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  width: Get.width * 0.5,
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
                                      onPressed: () {},
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: Text(
                                          'Login',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 15),
                                        ),
                                      )),
                                ),
                                Padding(
                                    padding: getPadding(top: 9, bottom: 10),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () => Get.toNamed(
                                                    Routes.FORGOT_PASSWORD),
                                              text: "Forgot your Password ? ",
                                              style: TextStyle(
                                                  color: primaryColor,
                                                  fontSize: getFontSize(14),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400)),
                                        ]),
                                        textAlign: TextAlign.left)),
                                RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "Don’t have an account ? ",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: getFontSize(14),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w400)),
                                      TextSpan(
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () =>
                                                Get.toNamed(Routes.REGISTER),
                                          text: "Register",
                                          style: TextStyle(
                                              color: primaryColor,
                                              fontSize: getFontSize(14),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w700))
                                    ]),
                                    textAlign: TextAlign.left)
                              ])),
                    ]))),
          )),
    );
  }
}

class PasswordItemWidget extends StatefulWidget {
  PasswordItemWidget({required this.index});
  final int index;

  @override
  State<PasswordItemWidget> createState() => _PasswordItemWidgetState();
}

class _PasswordItemWidgetState extends State<PasswordItemWidget> {
  final textFieldFocusNode = FocusNode();

  bool _obscured = true;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) {
        return;
      } // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus = true; // Prevents focus if tap on eye
    });
  }

  @override
  Widget build(BuildContext context) {
    var email = false.obs;
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        height: 45.00,
        width: 290.00,
        child: TextField(
          onChanged: ((value) {
            if (EmailValidator.validate(value)) {
              email(true);
            } else {
              email(false);
            }
          }),
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.check_circle_rounded,
              color: email.value ? Colors.green : Colors.grey[400],
            ),
            prefixIcon: Icon(
              Icons.mail_outlined,
              color: Colors.grey[400],
            ),
            hintText: "Username / Email",
            hintStyle: GoogleFonts.poppins(
                textStyle: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 15,
                    fontWeight: FontWeight.w400)),
            contentPadding: EdgeInsets.fromLTRB(5.0, 20.0, 20.0, 10.0),
            border: InputBorder.none,
          ),
        ));
  }
}
