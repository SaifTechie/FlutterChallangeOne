import 'package:assignment_one/views/home/widgets/timer_from_and_to_wiget.dart';
import 'package:flutter/material.dart';
import '../../../universal_widgets/custom_text.dart';
import '../../../utils/colors.dart';

class CardDetailsWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String startTimer;
  final String endTimer;

  const CardDetailsWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.startTimer,
    required this.endTimer,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Bg2,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            title: title,
            size: 14,
          ),
          const SizedBox(
            height: 5.0,
          ),
          CustomText(
            title: subTitle,
            textAlign: TextAlign.center,
            color: primaryFadeT.withOpacity(0.7),
            size: 12,
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TimerFromAndToWidget(
                timer: startTimer,
                subTitle: 'Starts',
              ),
              CustomText(
                title: 'to',
                color: primaryFadeT.withOpacity(0.7),
              ),
              TimerFromAndToWidget(
                timer: endTimer,
                subTitle: 'Ends',
              ),
            ],
          ),
        ],
      ),
    );
  }
}