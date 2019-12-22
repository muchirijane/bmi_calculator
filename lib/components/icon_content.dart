import 'package:flutter/material.dart';
import 'package:bmi_calculator/constant.dart';

class IconContent extends StatelessWidget {
  IconContent({this.iconType, this.iconLabel});
  final IconData iconType;
  final String iconLabel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconType,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconLabel,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
