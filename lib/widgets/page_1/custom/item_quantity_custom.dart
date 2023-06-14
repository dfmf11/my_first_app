import 'package:flutter/material.dart';

class ItemQuantityCustom extends StatefulWidget {
  final Widget? child;
  ItemQuantityCustom({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  _ItemQuantityCustomState createState() => _ItemQuantityCustomState();
}

class _ItemQuantityCustomState extends State<ItemQuantityCustom> {
  @override
  Widget build(BuildContext context) {
    return widget.child!;
  }
}
