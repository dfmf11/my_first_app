import 'package:flutter/material.dart';

class MinusButtonCustom extends StatefulWidget {
  final Widget? child;
  MinusButtonCustom({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  _MinusButtonCustomState createState() => _MinusButtonCustomState();
}

class _MinusButtonCustomState extends State<MinusButtonCustom> {
  @override
  Widget build(BuildContext context) {
    return widget.child!;
  }
}
