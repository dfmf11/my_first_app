import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/models/filterCategory.dart';

class MenuController extends GetxController {
  //TODO: Implement MenuController

  final textFieldFocusNode = FocusNode();

  List<FoodCategory> filterName = [
    FoodCategory(name: 'Burger', icon: Icons.food_bank, id: 100),
    FoodCategory(name: 'Nasi', icon: Icons.favorite, id: 200),
    FoodCategory(name: 'Nasi', icon: Icons.favorite, id: 300),
    FoodCategory(name: 'Ayam', icon: Icons.favorite, id: 400),
  ];

  final filterSelected = [].obs;

  final count = 0.obs;

  void increment() => count.value++;
}
