import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_first_app/app/modules/home/menu/controllers/menu_controller.dart';

class FavoriteView extends GetView<MenuController> {
  const FavoriteView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      var favList = controller.productDetail;
      return ListView.builder(
        shrinkWrap: true,
        itemCount: favList.where((p0) => p0.isFav).length,
        itemBuilder: (context, index) {
          var item = favList
              .where(
                (p0) => p0.isFav,
              )
              .elementAt(index);
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
                                    image: NetworkImage(item.imageUrl),
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
                              child: Text(item.name,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(item.price.toString(),
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                        Spacer(),
                        Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 65.0, horizontal: 30.0),
                            child: IconButton(
                              onPressed: () {
                                favList
                                    .where((p0) => p0.isFav)
                                    .elementAt(index)
                                    .isFav = false;
                                favList.refresh();
                              },
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ))
                      ])));
        },
      );
    });
  }
}
