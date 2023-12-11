import 'package:assignment_one/views/home/widgets/StackedPagesWidget.dart';
import 'package:flutter/material.dart';
import '../../../universal_widgets/custom_icon_button.dart';
import '../../../universal_widgets/custom_text.dart';
import '../../../utils/colors.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StackedPagesWidget(
      child: Container(
        decoration: BoxDecoration(
          color: Bg3,
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                CustomText(
                  title: 'Dec 12, 2023',
                  color: Bg4,
                  size: 12,
                ),
                const SizedBox(
                  height: 5.0,
                ),
                CustomText(
                  title: "Today's Insights",
                  size: 14,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                CustomText(
                  title:
                      "Embrace change, trust intuition, and go for it today.",
                ),
                const SizedBox(
                  height: 10.0,
                ),
                CustomText(
                  title:
                      "Seize the day and embrace transformation as you navigate new beginnings. Let your intuition guide you towards hidden opportunities. In the realm of love, romance blossoms as you connect with someone special. Your career shines brightly. bringing recognition and rewards for your dedication. Remember, Aries, the starsalign in your favor today, so step into the spotlight and let your brilliance shine. In therealm of love, romance blossoms asyou.Aries, the stars align in.",
                  color: primaryFadeT.withOpacity(0.7),
                  size: 12,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomIconButton(
                      topRight: 0.0,
                      bottomRight: 0.0,
                      iconData: Icons.thumb_up,
                      onTap: () {},
                    ),
                    VerticalDivider(width: 1),
                    CustomIconButton(
                      topLeft: 0.0,
                      bottomLeft: 0.0,
                      iconData: Icons.thumb_down,
                      onTap: () {},
                    ),
                  ],
                ),
                CustomIconButton(
                  iconData: Icons.share,
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
