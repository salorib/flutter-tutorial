import 'package:flutter/material.dart';

class CContainer extends StatelessWidget {
  CContainer({required this.myColor, this.myChild, this.stateFunction});

  final Color myColor;
  final Widget? myChild;
  final void Function()? stateFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: stateFunction,
      child: Container(
        child: myChild,
        decoration: BoxDecoration(
          color: myColor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        margin: EdgeInsets.all(15.0),
      ),
    );
  }
}
