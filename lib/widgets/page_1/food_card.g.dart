// *********************************************************************************
// PARABEAC-GENERATED CODE. DO NOT MODIFY.
//
// FOR MORE INFORMATION ON HOW TO USE PARABEAC, PLEASE VISIT docs.parabeac.com
// *********************************************************************************

import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:parabeac/widgets/page_1/custom/item_quantity_custom.dart';
import 'package:parabeac/widgets/page_1/custom/minus_button_custom.dart';
import 'package:parabeac/widgets/page_1/custom/plus_button_custom.dart';

class FoodCard extends StatefulWidget {
  final Widget? ovrRectangle2;
  final String? ovrRestaurantName;
  final String? ovrFoodName;
  final String? ovr2000;
  final String? ovr;

  const FoodCard({
    Key? key,
    this.ovrRectangle2,
    this.ovrRestaurantName,
    this.ovrFoodName,
    this.ovr2000,
    this.ovr,
  }) : super(key: key);

  @override
  _FoodCard createState() => _FoodCard();
}

class _FoodCard extends State<FoodCard> {
  _FoodCard();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
          decoration: BoxDecoration(
            color: Color(0xffb9b9b9),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Stack(children: [
            Positioned(
              left: 0,
              width: constraints.maxWidth * 1.0,
              top: 0,
              height: constraints.maxHeight * 1.0,
              child: Stack(children: [
                Positioned(
                  left: 26.0,
                  width: 112.0,
                  top: 24.0,
                  height: 100.0,
                  child: widget.ovrRectangle2 ??
                      Image.asset(
                        'assets/images/rectangle2.png',
                        package: 'parabeac',
                        height: 100.0,
                        width: 112.0,
                        fit: BoxFit.none,
                      ),
                ),
                Positioned(
                  left: 157.0,
                  width: 131.0,
                  top: 27.0,
                  height: 19.0,
                  child: Container(
                      height: 19.0,
                      width: 131.0,
                      child: AutoSizeText(
                        widget.ovrRestaurantName ?? 'Restaurant Name',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0,
                          color: Color(0xff2a2a2a),
                        ),
                        textAlign: TextAlign.left,
                      )),
                ),
                Positioned(
                  left: 157.0,
                  width: 87.0,
                  top: 64.0,
                  height: 19.0,
                  child: Container(
                      height: 19.0,
                      width: 87.0,
                      child: AutoSizeText(
                        widget.ovrFoodName ?? 'Food Name',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0,
                          color: Color(0xff2a2a2a),
                        ),
                        textAlign: TextAlign.left,
                      )),
                ),
                Positioned(
                  left: 157.0,
                  width: 54.0,
                  top: 101.0,
                  height: 19.0,
                  child: Container(
                      height: 19.0,
                      width: 54.0,
                      child: AutoSizeText(
                        widget.ovr2000 ?? '\$20.00',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0,
                          color: Color(0xff2a2a2a),
                        ),
                        textAlign: TextAlign.left,
                      )),
                ),
                Positioned(
                  left: 320.0,
                  width: 68.0,
                  top: 68.0,
                  height: 30.0,
                  child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(),
                      child: Stack(children: [
                        Positioned(
                          left: 31.0,
                          width: 10.0,
                          top: 5.0,
                          height: 20.0,
                          child: ItemQuantityCustom(
                              child: AutoSizeText(
                            '1',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.left,
                          )),
                        ),
                        Positioned(
                          left: 49.0,
                          width: 11.0,
                          top: 8.0,
                          height: 13.0,
                          child: MinusButtonCustom(
                              child: Container(
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(),
                                  child: Stack(children: [
                                    Positioned(
                                      left: 0,
                                      width: 11.0,
                                      top: 0,
                                      height: 19.0,
                                      child: Container(
                                          height: 19.0,
                                          width: 11.0,
                                          child: AutoSizeText(
                                            widget.ovr ?? '+',
                                            style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0,
                                              color: Colors.black,
                                            ),
                                            textAlign: TextAlign.left,
                                          )),
                                    ),
                                  ]))),
                        ),
                        Positioned(
                          left: 13.0,
                          width: 8.0,
                          top: 8.0,
                          height: 13.0,
                          child: PlusButtonCustom(
                              child: Container(
                                  clipBehavior: Clip.hardEdge,
                                  decoration: BoxDecoration(),
                                  child: Stack(children: [
                                    Positioned(
                                      left: 0,
                                      width: 8.0,
                                      top: 0,
                                      height: 19.0,
                                      child: Container(
                                          height: 19.0,
                                          width: 8.0,
                                          child: AutoSizeText(
                                            widget.ovr ?? '-',
                                            style: TextStyle(
                                              fontFamily: 'Inter',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 0,
                                              color: Colors.black,
                                            ),
                                            textAlign: TextAlign.left,
                                          )),
                                    ),
                                  ]))),
                        ),
                      ])),
                ),
              ]),
            ),
          ]));
    });
  }

  @override
  void dispose() {
    super.dispose();
  }
}
