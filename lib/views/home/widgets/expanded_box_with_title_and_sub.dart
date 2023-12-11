import 'package:assignment_one/views/home/widgets/timer_from_and_to_wiget.dart';
import 'package:flutter/material.dart';
import '../../../utils/colors.dart';

class ExpandedBoxWithTitleAndSub extends StatelessWidget {
  final bool indicator;
  final String title;
  final String subTitle;

  const ExpandedBoxWithTitleAndSub({
    super.key,
    this.indicator = false,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: BoxDecoration(
          color: Bg2,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: TimerFromAndToWidget(
          indicator: indicator,
          timer: title,
          subTitle: subTitle,
        ),
      ),
    );
  }
}