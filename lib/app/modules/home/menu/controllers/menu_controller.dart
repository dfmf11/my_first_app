import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  //TODO: Implement MenuController

  final textFieldFocusNode = FocusNode();

  final count = 0.obs;

  bool selected = false;
  final List<ItemModel> _chipsList = [
    ItemModel("Android", Colors.green, false),
    ItemModel("Flutter", Colors.blueGrey, false),
    ItemModel("Ios", Colors.deepOrange, false),
    ItemModel("Python", Colors.cyan, false),
    ItemModel("React JS", Colors.teal, false),
  ];

  void increment() => count.value++;
}

class ItemModel {
  String label;
  Color color;
  bool isSelected;

  ItemModel(this.label, this.color, this.isSelected);
}
