import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'custom_text.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GradientText(
          child: CustomText(
            title: 'Home',
            size: 16,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
          decoration: BoxDecoration(
            color: Bg3,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: CircleAvatar(
                  radius: 15,
                  child: Image.network(
                    'https://th.bing.com/th/id/OIP.2i5UaEHaQM3PYAYXQyM1AAAAAA?rs=1&pid=ImgDetMain',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 3,
              ),
              CustomText(
                title: 'Riya Singh',
                size: 10,
              ),
              SizedBox(
                width: 3,
              ),
              Icon(
                Icons.arrow_downward_rounded,
                size: 15,
                color: primaryB,
              ),
            ],
          ),
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 42,
              height: 42,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Bg3),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Center(
                child: Icon(
                  Icons.notifications_rounded,
                  size: 16,
                  color: primaryB,
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  color: borderC,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}