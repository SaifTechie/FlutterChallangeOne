import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'custom_text.dart';

class ExpandedButton extends StatelessWidget {
  final bool backgroundColor;
  final String title;
  final IconData? iconData;
  final VoidCallback onTap;

  const ExpandedButton({
    super.key,
    this.backgroundColor = false,
    required this.title,
    this.iconData,
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
          color: backgroundColor ? borderC : null,
          border:
              !backgroundColor ? Border.all(color: borderC, width: 0.5) : null,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconData != null)
              Icon(
                iconData,
                color: primaryB,
              ),
            if (iconData != null)
              SizedBox(
                width: 3,
              ),
            CustomText(
              title: title,
              textAlign: TextAlign.center,
              size: 14,
            ),
          ],
        ),
      ),
    );
  }
}
