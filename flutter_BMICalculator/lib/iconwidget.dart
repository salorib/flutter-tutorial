import 'package:flutter/material.dart';
import 'constants.dart';

class IconWidget extends StatelessWidget {
  IconWidget({required this.label, required this.icon});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
          color: kThecolor,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kMyTextStyle,
        ),
      ],
    );
  }
}
