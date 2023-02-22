import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/models/filterCategory.dart';
import '../../../../data/models/product_model.dart';

class MenuController extends GetxController {
  //TODO: Implement MenuController

  final textFieldFocusNode = FocusNode();

  List<FoodCategory> filterName = [
    FoodCategory(name: 'Burger', icon: Icons.food_bank, id: 100),
    FoodCategory(name: 'Nasi', icon: Icons.favorite, id: 200),
    FoodCategory(name: 'Nasi', icon: Icons.favorite, id: 300),
    FoodCategory(name: 'Ayam', icon: Icons.favorite, id: 400),
  ];

  final productDetail = <Product>[
    Product(
        name: 'Haiwaian Burger',
        price: 2.5,
        imageUrl:
            'https://images.unsplash.com/photo-1565299507177-b0ac66763828?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        showBanner: true,
        isFav: false),
    Product(
        name: 'Mexican Burger',
        price: 10.5,
        imageUrl:
            'https://images.unsplash.com/photo-1572802419224-296b0aeee0d9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGJ1cmdlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        showBanner: false,
        isFav: false),
    Product(
        name: 'Spicy Burger',
        price: 11.4,
        imageUrl:
            'https://images.unsplash.com/photo-1610440042657-612c34d95e9f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGdvdXJtZXQlMjBidXJnZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
        showBanner: false,
        isFav: false),
    Product(
        name: 'Chicken Burger',
        price: 20.5,
        imageUrl:
            'https://images.unsplash.com/photo-1606755962773-d324e0a13086?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y2hpY2tlbiUyMGJ1cmdlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
        showBanner: false,
        isFav: false),
  ].obs;

  final filterSelected = [].obs;
}
