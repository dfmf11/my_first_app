import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  //TODO: Implement MenuController

  final textFieldFocusNode = FocusNode();

  final count = 0.obs;

  void increment() => count.value++;
}
