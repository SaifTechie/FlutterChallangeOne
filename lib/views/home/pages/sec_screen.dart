import 'package:flutter/material.dart';
import '../../../universal_widgets/custom_icon_button.dart';
import '../../../universal_widgets/custom_text.dart';
import '../../../utils/colors.dart';
import '../widgets/card_details_widget.dart';
import '../widgets/expanded_box_with_title_and_sub.dart';

class SecScreen extends StatelessWidget {
  const SecScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                title: 'Good and Challenging Moments',
                color: Bg4,
                size: 12,
              ),
              const SizedBox(
                height: 5.0,
              ),
              CustomText(
                title: "Your Cosmetic Days Forecast",
                size: 14,
              ),
              const SizedBox(
                height: 20.0,
              ),
              CardDetailsWidget(
                title: 'Choghadiya',
                subTitle: 'embrace positivity, seize oppertunities between',
                startTimer: '11:34 PM',
                endTimer: '12:34 AM',
              ),
              const SizedBox(
                height: 10.0,
              ),
              CardDetailsWidget(
                title: 'Rahu Kaal',
                subTitle: 'navigate challenges wisely between',
                startTimer: '03:34 PM',
                endTimer: '06:34 PM',
              ),
              const SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: 120.0,
                child: Row(
                  children: [
                    ExpandedBoxWithTitleAndSub(
                      indicator: true,
                      title: 'Red',
                      subTitle: 'Lucky Colour',
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    ExpandedBoxWithTitleAndSub(
                      title: '12',
                      subTitle: 'Lucky Number',
                    ),
                  ],
                ),
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
    );
  }
}