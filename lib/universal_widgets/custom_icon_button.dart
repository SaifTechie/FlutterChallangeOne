import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CustomIconButton extends StatelessWidget {
  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;
  final IconData iconData;
  final VoidCallback onTap;

  CustomIconButton({
    super.key,
    this.topLeft = 10,
    this.topRight = 10,
    this.bottomLeft = 10,
    this.bottomRight = 10,
    required this.iconData,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Bg2,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft),
            topRight: Radius.circular(topRight),
            bottomLeft: Radius.circular(bottomLeft),
            bottomRight: Radius.circular(bottomRight),
          ),
        ),
        child: Icon(
          iconData,
          color: primaryB,
        ),
      ),
    );
  }
}
