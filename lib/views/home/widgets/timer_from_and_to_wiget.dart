import 'package:flutter/material.dart';

import '../../../universal_widgets/custom_text.dart';
import '../../../utils/colors.dart';

class TimerFromAndToWidget extends StatelessWidget {
  final bool indicator;
  final String timer;
  final String subTitle;

  const TimerFromAndToWidget({
    super.key,
    this.indicator = false,
    required this.timer,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (indicator)
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: borderC,
                    shape: BoxShape.circle
                ),
              ),
            if (indicator)
              SizedBox(width: 5.0,),
            CustomText(title: timer),
          ],
        ),
        const SizedBox(
          height: 3.0,
        ),
        CustomText(
          title: subTitle,
          color: Bg4,
          size: 12,
        ),
      ],
    );
  }
}
