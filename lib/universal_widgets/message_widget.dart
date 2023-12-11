import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'custom_text.dart';

class MessageWidget extends StatelessWidget {
  final String msg;

  const MessageWidget({
    super.key,
    required this.msg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.only(bottom: 7.0),
      decoration: BoxDecoration(
        color: Bg2,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0),
          topRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: CustomText(
        title: msg,
        size: 13,
        color: Bg4,
      ),
    );
  }
}
