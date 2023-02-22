import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Your Cart',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20)),
              SizedBox(
                height: 10,
              ),
              Obx(
                () => ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.addToCart.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: Get.width * 0.95,
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 0,
                        margin: EdgeInsets.only(bottom: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(controller
                                            .addToCart[index].imageUrl),
                                        fit: BoxFit.fitWidth,
                                      ),
                                      borderRadius: BorderRadius.circular(20)),
                                  width: 120,
                                  height: 130,
                                )),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Text(controller.addToCart[index].name,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black)),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                      controller.addToCart[index].price
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black)),
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                        onTap: (() {
                                          if (controller
                                                  .addToCart[index].quantity >
                                              1) {
                                            controller
                                                .addToCart[index].quantity--;
                                            controller.addToCart.refresh();
                                          } else {
                                            controller.addToCart
                                                .removeAt(index);
                                          }
                                        }),
                                        child: Container(
                                            width: 60,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(25),
                                                    bottomLeft:
                                                        Radius.circular(25))),
                                            child: controller.addToCart[index]
                                                        .quantity >
                                                    1
                                                ? Icon(Icons.remove,
                                                    color: Colors.black)
                                                : Icon(
                                                    Icons.delete,
                                                    color: Colors.white,
                                                  ))),
                                    Container(
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.grey)),
                                      width: 80,
                                      height: 50,
                                      child: Center(
                                        child: Text(
                                            controller.addToCart[index].quantity
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.black)),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        controller.addToCart[index].quantity++;
                                        controller.addToCart.refresh();
                                      },
                                      child: Container(
                                          width: 60,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color: Colors.grey,
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(25),
                                                  bottomRight:
                                                      Radius.circular(25))),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.black,
                                          )),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
